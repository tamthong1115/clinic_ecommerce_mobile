import 'package:dartz/dartz.dart';

abstract class AuthRepositories{
// Future<Either> SignUp(SignupReqParams signupReqParams);
// Future<Either> SignIn(SigninReqParams signinReqParams);
Future<bool> isLoggedIn();
Future<Either> logout();
Future<Either> refreshToken();
}