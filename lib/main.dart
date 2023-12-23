// Packages
import 'package:flutter/material.dart';

// Files
import 'pages/login_page.dart';
import 'pages/signup_page.dart';
import 'pages/sign_upas.dart';
import 'pages/forget_password_page.dart';
import 'pages/home_page.dart';
import 'pages/business_view.dart';
import 'pages/businesspage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const LoginPage(),
        routes: {
          '/loginpage': (context) => const LoginPage(),
          '/signuppage': (context) => const SignUpPage(),
          '/signupas': (context) => const SignUpAs(),
          '/forgetpasswordpage': (context) => const ForgetPasswordPage(),
          '/homepage': (context) => const HomePage(),
          '/businessview': (context) => const Business(),
          '/businesspage': (context) => const Businesspage(),
        });
  }
}
