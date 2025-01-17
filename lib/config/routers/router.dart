import 'package:clinic_ecommerce_mobile/core/auth/presentation/register/register_screen.dart';
import 'package:flutter/material.dart';
import '../../core/auth/presentation/forgot_password/forgot_password.dart';
import '../../modules/home/screens/home_page.dart';
import '../../core/auth/presentation/login/login_screen.dart';
import '../../core/auth/presentation/register/register_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
        case '/register':
        return MaterialPageRoute(builder: (_) => RegisterScreen());
        case '/forgot-password':
        return MaterialPageRoute(builder: (_) => ForgotPasswordScreen());
      default:
        return MaterialPageRoute(builder: (_) => LoginScreen());
    }
  }
}
