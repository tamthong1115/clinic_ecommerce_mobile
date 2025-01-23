import 'package:clinic_ecommerce_mobile/config/routers/router.dart';
import 'package:flutter/material.dart';
import 'router_config.dart';

class RouterHandle {
  static void navigateToHome(BuildContext context) {
    AppRouter.router.navigateTo(context, MyRouterConfig.home,
        replace: true, clearStack: true);
  }

  static void navigateToHomeFirst(BuildContext context) {
    AppRouter.router
        .navigateTo(context, MyRouterConfig.register, replace: true);
  }

  static void goToLogin(BuildContext context) {
    AppRouter.router
        .navigateTo(context, MyRouterConfig.login, replace: true, clearStack: true);
  }

  static void goToRegister(BuildContext context) {
    AppRouter.router
        .navigateTo(context, MyRouterConfig.register, replace: true);
  }

  static void goToForgotPassword(BuildContext context) {
    AppRouter.router.navigateTo(context, MyRouterConfig.forgotPassword);
  }

  static void goToProfile(BuildContext context, String userId) {
    AppRouter.router.navigateTo(
      context,
      MyRouterConfig.profile.replaceFirst(':userId', userId),
    );
  }

  static void goBack(BuildContext context) {
    Navigator.of(context).pop();
  }
}
