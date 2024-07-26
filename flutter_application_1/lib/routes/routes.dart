import 'package:flutter_application_1/view/screens/main_screen.dart';
import 'package:flutter_application_1/view/screens/welcome_screen.dart';
import 'package:get/get.dart';
import '../logic/controllers/bindings/auth_binding.dart';
import '../logic/controllers/bindings/main_binding.dart';
import '../logic/controllers/bindings/product_binding.dart';
import '../view/screens/auth/forgot_password.dart';
import '../view/screens/auth/login.dart';
import '../view/screens/auth/signup.dart';
import '../view/screens/cart_screen.dart';
import '../view/screens/payment_screen.dart';
// import '../view/screens/payment_screen.dart';

class AppRoutes {
  //initial Rote
  static const welcome = Routes.welcomeScreen;
  static const mainScr = Routes.mainScreen;

//getPages
  static final routes = [
    GetPage(name: Routes.welcomeScreen, page: () => const WelcomeScreen()),
    GetPage(
      name: Routes.loginScreen,
      page: () => LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () => SignUpScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.forgotPasswordScreen,
      page: () => ForgotPassword(),
      binding: AuthBinding(),
    ),
    GetPage(name: Routes.mainScreen, page: () => MainScreen(), bindings: [
      AuthBinding(),
      MainBinding(),
      ProductBinding(),
    ]),
    GetPage(
      name: Routes.cartScreen,
      page: () => CartScreen(),
      bindings: [
        AuthBinding(),
        ProductBinding(),
      ],
    ),
    GetPage(
      name: Routes.paymentScreen,
      page: () => PayMentScreen(),
      bindings: [
        AuthBinding(),
        ProductBinding(),
        MainBinding(),
      ],
    ),
  ];
}

class Routes {
  static const welcomeScreen = '/welcomeScreen';
  static const loginScreen = '/loginScreen';
  static const signUpScreen = '/signUpScreen';
  static const forgotPasswordScreen = '/forgotPasswordScreen';
  static const mainScreen = '/mainScreen';
  static const cartScreen = '/cartScreen';
  static const paymentScreen = '/paymentScreen';
}
