import 'package:first___app/views/screens/auth/forget_password.dart';
import 'package:first___app/views/screens/auth/login_screen.dart';
import 'package:first___app/views/screens/auth/signup_screen.dart';

import 'package:get/get.dart';

import '../views/screens/welcomescreen.dart';

class AppRoute {
  static const welcome = Routes.welcomeScreen;
  static final routes = [
    GetPage(
      name: Routes.welcomeScreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: Routes.signupscreen,
      page: () => SignUpScreen(),
    ),
    GetPage(name: Routes.loginscreen, page: () => LogInScreen()),
    GetPage(name: Routes.forgetpasswordscreen, page: () => ForGetPassword())
  ];
}

class Routes {
  static const welcomeScreen = "/welcomescreen";
  static const signupscreen = "/signupscreen";
  static const loginscreen = "/logscreen";
  static const forgetpasswordscreen = "/forgetpassswordcreen";
}
