// Packages
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureValue = true;
  bool business = false;
  String errorMessage = '';

  Future<bool> login(
      String email, String password, bool customerbusiness) async {
    try {
      final Uri uri = Uri.parse('http://192.168.34.91:5000/login');

      final response = await http.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'email': email,
          'password': password,
          'customerbusiness': customerbusiness.toString(),
        }),
      );
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (error) {
      return false;
      // Handle the error as needed, e.g., show an error message to the user
    }
  }

  void _updateObscureValue() {
    setState(() {
      if (_obscureValue) {
        _obscureValue = false;
      } else {
        _obscureValue = true;
      }
    });
  }

  void _switchtobusiness(bool value) {
    setState(() {
      business = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(245, 245, 245, 1),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -screenSize.height * 0.01,
              left: 0,
              right: 0,
              child: SvgPicture.asset('assets/O2D_Logo.svg', width: 250,),),

            // "Sign in"
            Positioned(
              top: screenSize.height * 0.238,
              left: screenSize.width * 0.040,
              child: const Text("Sign in",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(102, 102, 102, 1),
                  )),
            ),

            Positioned(
              top: screenSize.height * 0.455,
              left: screenSize.width * 0.06,
              child: Text(
                errorMessage,
                style: const TextStyle(color: Colors.red),
              ),
            ),

            // Email/User name textfield
            Positioned(
                top: screenSize.height * 0.310,
                left: screenSize.width * 0.048,
                child: SizedBox(
                  width: screenSize.width * 0.9,
                  height: 50,
                  child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Color.fromRGBO(174, 217, 224, 1),
                        ),
                        hintText: '\t\tEmail or User Name',
                        hintStyle: const TextStyle(
                          color: Colors.black45,
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 11.0,
                          horizontal: 16.0,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(174, 217, 224, 1),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      )),
                )),

            // The password text field
            Positioned(
              top: screenSize.height * 0.382,
              left: screenSize.width * 0.048,
              child: SizedBox(
                width: screenSize.width * 0.9,
                height: 50,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    TextField(
                      controller: _passwordController,
                      obscureText: _obscureValue,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock_outline_rounded,
                          color: Color.fromRGBO(255, 218, 185, 1),
                        ),
                        hintText: '\t\tPassword',
                        hintStyle: const TextStyle(
                          color: Colors.black45,
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 11.0,
                          horizontal: 16.0,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(255, 218, 185, 1),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        _updateObscureValue();
                      },
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: Color.fromRGBO(255, 218, 185, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //switch button for users and businesses
            Positioned(
              top: screenSize.height * 0.499,
              left: screenSize.width * 0.024,
              child: Row(
                children: [
                  Switch(
                    value: business,
                    onChanged: (value) {
                      _switchtobusiness(value);
                    },
                    activeColor: const Color.fromRGBO(174, 217, 224, 1),
                  ),
                  const Text(
                    'Business',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color.fromARGB(255, 73, 72, 72),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // Forgot password
            Positioned(
              top: screenSize.height * 0.499,
              left: screenSize.width * 0.625,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/forgetpasswordpage');
                },
                child: const Text(
                  "Forgot password?",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Color.fromARGB(255, 73, 72, 72),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // Sign in/Login in Button
            Positioned(
              top: screenSize.height * 0.581,
              left: screenSize.width * 0.051,
              child: SizedBox(
                width: screenSize.width * 0.9,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    login(_emailController.text, _passwordController.text,
                            business)
                        .then((bool loginSuccessful) {
                      if (loginSuccessful) {
                        if (business) {
                          // If Remember Me is true, navigate to another page (e.g., '/otherpage')
                          Navigator.pushNamed(context, '/businessview');
                        } else {
                          // If Remember Me is false, navigate to the default home page (e.g., '/homepage')
                          Navigator.pushNamed(context, '/homepage');
                        }
                      } else {
                        setState(() {
                          errorMessage = 'Incorrect username or password';
                        });
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(174, 217, 224, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
            ),

            // Other Sign in options
            Positioned(
              top: screenSize.height * 0.695,
              left: screenSize.width * 0.387,
              child: const Text(
                "Or sign in with",
                style: TextStyle(
                  color: Color.fromRGBO(51, 51, 51, 1),
                  fontFamily: "Inter",
                  fontSize: 15,
                ),
              ),
            ),

            // Icons for other sign in options
            Positioned(
              top: screenSize.height * 0.72,
              left: screenSize.width * 0.13,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: GestureDetector(
                        onTap: () {
                          // when pressed navigate to ... whatever baa enty 3ayza eh
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("assets/google-logo.png"),
                            fit: BoxFit.fitWidth,
                          )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: GestureDetector(
                        onTap: () {
                          // when pressed navigate to ... whatever baa enty 3ayza eh
                        },
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("assets/twitter-logo.png"),
                            fit: BoxFit.fitWidth,
                          )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: GestureDetector(
                        onTap: () {
                          // when pressed navigate to ... whatever baa enty 3ayza eh
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("assets/facebook_logo.png"),
                            fit: BoxFit.fitWidth,
                          )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: GestureDetector(
                        onTap: () {
                          // when pressed navigate to ... whatever baa enty 3ayza eh
                        },
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("assets/linkedin-logo.webp"),
                            fit: BoxFit.fitWidth,
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Sign up button
            Positioned(
              top: screenSize.height * 0.865,
              left: screenSize.width * 0.252,
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontFamily: "Inter",
                    fontSize: 15,
                  ),
                  children: [
                    const TextSpan(text: "Don't have an account? "),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Handle button click
                          Navigator.pop(context);
                          Navigator.pushNamed(context, '/signupas');
                        },
                      text: "Sign Up",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
