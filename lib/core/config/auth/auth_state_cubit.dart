import 'package:bloc/bloc.dart';
import 'package:clinic_ecommerce_mobile/core/config/auth/auth_state.dart';
import 'package:clinic_ecommerce_mobile/di/service_locator.dart';
import 'package:logger/logger.dart';

class AuthStateCubit extends Cubit<AuthState> {
  AuthStateCubit() : super(AppInitialState());

  void appStarted() async {
  //   var isLoggedIn = await gt<IsLoggedInUseCase>().call();
    var isLoggedIn = true;
    var logger = gt<Logger>();
    if (isLoggedIn) {
      logger.i('✅ Login successful, emitting Authenticated');
      emit(Authenticated());
    }else {
      logger.i('❌ No user found, emitting UnAuthenticated');
      emit(UnAuthenticated());
    }
  }
}
