import 'package:clinic_ecommerce_mobile/core/services/network/dio_client.dart';
import 'package:clinic_ecommerce_mobile/data/repositories/auth_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/repositories/impl/auth_repository_impl.dart';

final gt = GetIt.instance;

Future<void> setupServiceLocator() async {
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  final Logger logger = Logger();

  //services
  gt.registerSingleton<DioClient>(
      DioClient()
  );

  gt.registerLazySingleton<Logger> (
      () => logger
  );

  gt.registerLazySingleton<SharedPreferences>(
      () => sharedPreferences
  );

  //repositories

  gt.registerLazySingleton<AuthRepositories>(
      () => AuthRepositoryImpl()
  );

  //usecases

  //register auth state
}
