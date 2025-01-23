import 'package:clinic_ecommerce_mobile/config/routers/router_config.dart';
import 'package:clinic_ecommerce_mobile/core/auth/presentation/register/register_screen.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../../core/auth/presentation/forgot_password/forgot_password.dart';
import '../../modules/home/screens/home_page.dart';
import '../../core/auth/presentation/login/login_screen.dart';
import '../../core/auth/presentation/register/register_screen.dart';

class AppRouter {
  static final FluroRouter router = FluroRouter();

  static void defineRouters() {
    router.define(
      MyRouterConfig.home,
      handler: Handler(handlerFunc: (context, params) => HomePage()),
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

    // router.define(
    //   MyRouterConfig.profile,
    //   handler: Handler(handlerFunc: (context, params) {
    //     final userId = params['userId']?.first; //Lấy giá trị userId từ tham số truyền vào trên url (params) first là lấy giá trị đầu tiên
    //     return ProfileScreen(userId: userId!);
    //   }),
    //   transitionType: null,
    //   transitionDuration: Duration(milliseconds: 0),
    // );

    router.notFoundHandler =
        Handler(handlerFunc: (context, params) => LoginScreen());
  }
}
