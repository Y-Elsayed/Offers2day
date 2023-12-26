import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:offers2day/pages/login_page.dart'; // Replace with the correct import path

class Startpage extends StatefulWidget {
  const Startpage({Key? key}) : super(key: key);

  @override
  State<Startpage> createState() => _StartpageState();
}

class _StartpageState extends State<Startpage> {
  bool _visible = false;

  @override
  void initState() {
    super.initState();
    // Start the fade-in animation after a short delay
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _visible = true;
      });
      
      // Navigate to the login page after another delay
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()), // Using the LoginPage widget
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: const Duration(seconds: 1),
          curve: Curves.easeIn,
          child: SizedBox(
            width: 700,
            height: 700,
            child: SvgPicture.asset('assets/O2D_Logo.svg'), // Replace with your SVG or Image widget
          ),
        ),
      ),
    );
  }
}