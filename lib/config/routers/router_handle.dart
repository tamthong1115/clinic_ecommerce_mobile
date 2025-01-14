import 'package:flutter/material.dart';
import 'router_config.dart';

class RouterHandle {
  void navigateToHome(BuildContext context) {
    Navigator.pushReplacementNamed(context, MyRouterConfig.home);
  }

  static void goToLogin(BuildContext context) {
    Navigator.pushNamed(context, MyRouterConfig.login);
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