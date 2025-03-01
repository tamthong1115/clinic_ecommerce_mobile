import 'package:clinic_ecommerce_mobile/core/config/routers/router_config.dart';
import 'package:fluro/fluro.dart';

import '../presentation/widgets/main_layout.dart';
import '../core/config/auth/presentation/forgot_password/forgot_password.dart';
import '../core/config/auth/presentation/login/login_screen.dart';
import '../core/config/auth/presentation/register/register_screen.dart';
class AppRouter {
  static final FluroRouter router = FluroRouter();

  static void defineRouters() {
    router.define(
      MyRouterConfig.home,
      handler: Handler(handlerFunc: (context, params) => MainLayout()),
      transitionType: null,
      transitionDuration: Duration(milliseconds: 0),
    );

    router.define(
      MyRouterConfig.login,
      handler: Handler(handlerFunc: (context, params) => LoginScreen()),
      transitionType: null,
      transitionDuration: Duration(milliseconds: 0),
    );

    router.define(
      MyRouterConfig.register,
      handler: Handler(handlerFunc: (context, params) => RegisterScreen()),
      transitionType: null,
      transitionDuration: Duration(milliseconds: 0),
    );

    router.define(
      MyRouterConfig.forgotPassword,
      handler: Handler(handlerFunc: (context, params) => ForgotPasswordScreen()),
      transitionType: null,
      transitionDuration: Duration(milliseconds: 0),
    );

    router.notFoundHandler =
        Handler(handlerFunc: (context, params) => LoginScreen());
  }
}
