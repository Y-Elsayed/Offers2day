// Packages
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

// Files
import 'navigator_service.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();

  // Navigator Controller
  NavigatorService navigatorService = NavigatorService();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: null,
        body: Container(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                const MaxGap(100),
                Container(
                  padding: const EdgeInsets.all(0.4),
                  alignment: Alignment.centerLeft,
                  child: RichText(
                      text: TextSpan(children: <InlineSpan>[
                    WidgetSpan(
                        child: GestureDetector(
                      onTap: () {
                        navigatorService.popFromNavigator(context);
                      },
                      child: const Icon(Icons.arrow_back),
                    )),
                    TextSpan(
                        text: "Back",
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            navigatorService.popFromNavigator(context);
                          })
                  ])),
                ),
                const Gap(30),
                Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 92, 91, 91),
                          fontSize: 30),
                    )),
                const Gap(30),
                SizedBox(
                    width: screenSize.width * 0.9,
                    height: 50,
                    child: TextField(
                      controller: _fullnameController,
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.person, color: Colors.orange),
                          labelText: '\t\tFull Name',
                          labelStyle: const TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.orange),
                              borderRadius: BorderRadius.circular(10.0))),
                    )),
                const Gap(30),
                SizedBox(
                    width: screenSize.width * 0.9,
                    height: 50,
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email_outlined,
                              color: Colors.blue),
                          labelText: '\t\tEmail',
                          labelStyle: const TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(10.0))),
                    )),
                const Gap(30),
                SizedBox(
                    width: screenSize.width * 0.9,
                    height: 50,
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock_outline_rounded,
                              color: Colors.orange),
                          labelText: '\t\tPassword',
                          labelStyle: const TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.orange),
                              borderRadius: BorderRadius.circular(10.0))),
                    )),
                const Gap(30),
                SizedBox(
                    width: screenSize.width * 0.9,
                    height: 50,
                    child: TextField(
                      controller: _confirmpasswordController,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock_outline_rounded,
                              color: Colors.blue),
                          labelText: '\t\tConfirm Password',
                          labelStyle: const TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(10.0))),
                    )),
                const Gap(30),
                SizedBox(
                    width: screenSize.width * 0.9,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          // Perform login logic here
                          //pop the login page widget from the stack

                          // Check if login is successful (for simplicity, always navigate)
                          navigatorService.popFromNavigator(context);
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: const Text('Sign Up',
                            style: TextStyle(fontSize: 15)))),
                const Gap(100),
                RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: const TextStyle(
                        color: Color.fromARGB(255, 92, 91, 91), fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Login',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 92, 91, 91),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Handle button click
                            navigatorService.popFromNavigator(context);
                          },
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
