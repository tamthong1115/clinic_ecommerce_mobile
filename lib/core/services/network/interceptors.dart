import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import '../../../data/repositories/auth_repository.dart';
import '../../../di/service_locator.dart';
import 'dio_client.dart';

/// This interceptor is used to show request and response logs
class LoggerInterceptor extends Interceptor {
  Logger logger = Logger(printer: PrettyPrinter(methodCount: 0, colors: true,printEmojis: true));
  @override
  void onError( DioException err, ErrorInterceptorHandler handler) async {
    final options = err.requestOptions;
    final requestPath = '${options.baseUrl}${options.path}';
    logger.e('${options.method} request ==> $requestPath');
    logger.d('Error type: ${err.error} \n '
        'Error message: ${err.message}');

    if (err.response?.statusCode == 401) {
      logger.w('🔄 Token expired, attempting to refresh...');
      await _handlerefreshToken(err,handler);
    } else {
      handler.next(err);
    }
  }
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final requestPath = '${options.baseUrl}${options.path}';
    logger.i('${options.method} request ==> $requestPath'); //Info log
    handler.next(options); // continue with the Request
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.d('STATUSCODE: ${response.statusCode} \n '
        'STATUSMESSAGE: ${response.statusMessage} \n'
        'HEADERS: ${response.headers} \n'
        'Data: ${response.data}'); // Debug log
    handler.next(response); // continue with the Response
  }


  Future <void> _handlerefreshToken(DioException err, ErrorInterceptorHandler handler) async {
    final authRepository = gt<AuthRepositories>();
    final oldRequest = err.requestOptions;

    try{
      final result = await authRepository.refreshToken();

      result.fold(
            (error) {
          logger.e('Error refreshing token: $error');
          handler.reject(error);
        }
        , (data) async {
        String newToken = data['token'];
        oldRequest.headers['Authorization'] = 'Bearer $newToken';

        logger.w('Retrying request with new token...');
        final newRequest = await gt<DioClient>().get(oldRequest.path, options: Options(headers: oldRequest.headers));

        handler.resolve(newRequest);
      },
      );
    }on DioException catch(e){
      logger.e('Error refreshing token: $e');
      handler.reject(e);
    }
  }
}