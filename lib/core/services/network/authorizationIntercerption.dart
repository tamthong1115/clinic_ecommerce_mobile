import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../di/service_locator.dart';

class AuthorizationInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = gt<SharedPreferences>().getString('token');

    if(token != null ) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    handler.next(options);
  }
}