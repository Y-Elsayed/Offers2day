// Packages
import 'package:flutter/material.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPasswordPage> {
  // Controllers
  final TextEditingController _forgotController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: null,
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(color: Color(0xFFF5F5F5)),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: screenSize.width,
                height: screenSize.height,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(color: Color(0xFFF5F5F5)),
                child: Stack(
                  children: [
                    Positioned(
                      left: -screenSize.width * 0.238,
                      top: -screenSize.height * 0.225,
                      child: Container(
                        width: screenSize.width * 0.872,
                        height: screenSize.height * 0.413,
                        decoration: const ShapeDecoration(
                          color: Color.fromARGB(225, 255, 218, 185),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      left: screenSize.width * 0.444,
                      top: -screenSize.height * 0.433,
                      child: Container(
                        width: screenSize.width * 1.132,
                        height: screenSize.height * 0.537,
                        decoration: const ShapeDecoration(
                          color: Color.fromARGB(175, 174, 217, 224),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      left: screenSize.width * 0.894,
                      top: screenSize.height * 1.459,
                      child: Transform(
                        transform: Matrix4.identity()
                          ..translate(0.0, 0.0)
                          ..rotateZ(3.14),
                        child: Container(
                          width: screenSize.width * 1.132,
                          height: screenSize.height * 0.537,
                          decoration: const ShapeDecoration(
                            color: Color.fromARGB(175, 174, 217, 224),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: screenSize.width * 1.545,
                      top: screenSize.height * 1.23,
                      child: Transform(
                        transform: Matrix4.identity()
                          ..translate(0.0, 0.0)
                          ..rotateZ(3.14),
                        child: Container(
                          width: screenSize.width * 0.872,
                          height: screenSize.height * 0.413,
                          decoration: const ShapeDecoration(
                            color: Color.fromARGB(225, 255, 218, 185),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: screenSize.width * 0.082,
              top: screenSize.height * 0.318,
              child: SizedBox(
                width: screenSize.width * 0.622,
                height: 96,
                child: const Text(
                  'Oh no!\n          I forgot',
                  style: TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 32,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenSize.width * 0.063,
              top: screenSize.height * 0.477,
              child: SizedBox(
                width: screenSize.width * 0.9,
                height: 50,
                child: TextField(
                  controller: _forgotController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Color.fromARGB(175, 174, 217, 224),
                    ),
                    hintText: '\t\tEnter your email / phone number',
                    hintStyle: const TextStyle(
                      color: Colors.black45,
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 11.0, horizontal: 16.0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2,
                        color: Color.fromARGB(175, 174, 217, 224),
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenSize.width * 0.17,
              top: screenSize.height * 0.585,
              width: screenSize.width * 0.7,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Perform the logic for the reset pawssword
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  backgroundColor: const Color.fromARGB(175, 174, 217, 224),
                ),
                child: const Text(
                  'Reset Password',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Intel',
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
