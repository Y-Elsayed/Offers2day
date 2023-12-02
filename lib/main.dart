// Packages
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Files
import 'pages/login_page.dart';
import 'pages/signup_page.dart';
import 'pages/forget_password_page.dart';
import 'pages/home_page.dart';

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
        '/forgetpasswordpage': (context) => const ForgetPasswordPage(),
        '/homepage': (context) => const HomePage()
      },
    );
  }
}
