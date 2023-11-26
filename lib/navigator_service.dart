import 'package:flutter/material.dart';
import 'home_page.dart';
import 'signup_page.dart';
import 'forget_password_page.dart';

class NavigatorService {
  static final NavigatorService _instance = NavigatorService._internal();

  factory NavigatorService() {
    return _instance;
  }

  NavigatorService._internal();

  void popFromNavigator(BuildContext context) {
    Navigator.pop(context);
  }

  void navigateToHomeScreen(BuildContext context) {
    // Navigate to the HomeScreen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  void navigateToForgetPasswordScreen(BuildContext context) {
    // Navigate to the HomeScreen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ForgetPasswordScreen()),
    );

    // void _navigateToSignUpScreen(BuildContext context) {
    //   // Navigate to the HomeScreen
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => const SignUpScreen()),
    //   );
    // }
  }
}
