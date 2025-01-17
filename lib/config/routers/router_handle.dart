import 'package:flutter/material.dart';
import 'router_config.dart';

class RouterHandle {
  void navigateToHome(BuildContext context) {
    Navigator.pushReplacementNamed(context, MyRouterConfig.home);
  }

  void navigateToHomeFirst(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, MyRouterConfig.home, (Route<dynamic> route) => false);
  }

  static void goToLogin(BuildContext context) {
    Navigator.pushReplacementNamed(context, MyRouterConfig.login);
  }

  static void goToRegister(BuildContext context) {
    Navigator.pushReplacementNamed(context, MyRouterConfig.register);
  }

  static void goToForgotPassword(BuildContext context) {
    Navigator.pushNamed(context, MyRouterConfig.forgotPassword);
  }

  static void goToProfile(BuildContext context, String userId) {
    Navigator.pushNamed(
      context,
      MyRouterConfig.profile.replaceFirst(':userId', userId),
      arguments: userId,
    );
  }

  static void goBack(BuildContext context) {
    Navigator.of(context).pop();
  }
}