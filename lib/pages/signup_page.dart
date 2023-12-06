// Packages
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();
  final TextEditingController _phonenumberController = TextEditingController();
  final TextEditingController _dateofbirthController = TextEditingController();
  DateTime _dateTime = DateTime.now();

  bool _obscureValue = true;

  void _showDataPicker() async {
    await showDatePicker(
            context: context,
            initialDate: _dateTime,
            firstDate: DateTime(1900),
            lastDate: DateTime.now())
        .then((value) {
      if (value != null) {
        setState(() {
          _dateTime = value;
          _dateofbirthController.text =
              "${_dateTime.day}/${_dateTime.month}/${_dateTime.year}";
        });
      }
    });
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

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
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
                    left: screenSize.width * 0.7,
                    top: -screenSize.height * 0.085,
                    child: Container(
                      width: screenSize.width * 0.35,
                      height: screenSize.width * 0.35,
                      decoration: const ShapeDecoration(
                        color: Color.fromARGB(225, 255, 218, 185),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenSize.width * 0.86,
                    top: -screenSize.height * 0.04,
                    child: Container(
                      width: screenSize.width * 0.35,
                      height: screenSize.width * 0.35,
                      decoration: const ShapeDecoration(
                        color: Color.fromARGB(230, 174, 217, 224),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: screenSize.height * 0.08,
            left: screenSize.width * 0.02,
            child: RichText(
              text: TextSpan(children: <InlineSpan>[
                WidgetSpan(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back),
                  ),
                ),
                TextSpan(
                  text: " Back",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pop(context);
                    },
                )
              ]),
            ),
          ),
          Positioned(
            top: screenSize.height * 0.206,
            left: screenSize.width * 0.05,
            child: const Text(
              "Sign Up",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 92, 91, 91),
                fontSize: 30,
              ),
            ),
          ),
          Positioned(
            top: 260,
            left: screenSize.width * 0.055,
            child: SizedBox(
              width: screenSize.width * 0.43,
              height: screenSize.height * 0.07,
              child: TextField(
                controller: _firstnameController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person,
                      color: Color.fromRGBO(255, 218, 185, 1)),
                  hintText: '\t\tFirst Name',
                  hintStyle: const TextStyle(
                      color: Colors.black45,
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 11.0, horizontal: 16.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromRGBO(255, 218, 185, 1)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 260,
            left: screenSize.width * 0.503,
            child: SizedBox(
              width: screenSize.width * 0.45,
              height: screenSize.height * 0.07,
              child: TextField(
                controller: _lastnameController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person,
                      color: Color.fromRGBO(255, 218, 185, 1)),
                  hintText: '\t\tLast Name',
                  hintStyle: const TextStyle(
                      color: Colors.black45,
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 11.0, horizontal: 16.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromRGBO(255, 218, 185, 1)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 335,
              left: screenSize.width * 0.055,
              child: SizedBox(
                  width: screenSize.width * 0.9,
                  height: screenSize.height * 0.07,
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email_outlined,
                            color: Color.fromRGBO(174, 217, 224, 1)),
                        hintText: '\t\tEmail',
                        hintStyle: const TextStyle(
                            color: Colors.black45,
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 11.0, horizontal: 16.0),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(174, 217, 224, 1)),
                            borderRadius: BorderRadius.circular(10.0))),
                  ))),
          Positioned(
              top: 403,
              left: screenSize.width * 0.055,
              child: SizedBox(
                width: screenSize.width * 0.9,
                height: screenSize.height * 0.07,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    TextField(
                      controller: _passwordController,
                      obscureText: _obscureValue,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_outline_rounded,
                            color: Color.fromRGBO(255, 218, 185, 1)),
                        hintText: '\t\tPassword',
                        hintStyle: const TextStyle(
                            color: Colors.black45,
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 11.0, horizontal: 16.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(255, 218, 185, 1)),
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
              )),
          Positioned(
              top: 478,
              left: screenSize.width * 0.055,
              child: SizedBox(
                  width: screenSize.width * 0.9,
                  height: screenSize.height * 0.07,
                  child: Stack(alignment: Alignment.centerRight, children: [
                    TextField(
                      controller: _confirmpasswordController,
                      obscureText: _obscureValue,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock_outline_rounded,
                              color: Color.fromRGBO(174, 217, 224, 1)),
                          hintText: '\t\tConfirm Password',
                          hintStyle: const TextStyle(
                              color: Colors.black45,
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 11.0, horizontal: 16.0),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(174, 217, 224, 1)),
                              borderRadius: BorderRadius.circular(10.0))),
                    ),
                    IconButton(
                      onPressed: () {
                        _updateObscureValue();
                      },
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: Color.fromRGBO(174, 217, 224, 1),
                      ),
                    )
                  ]))),
          Positioned(
              top: screenSize.height * 0.64,
              left: screenSize.width * 0.056,
              child: SizedBox(
                width: screenSize.width * 0.9,
                height: screenSize.height * 0.07,
                child: TextField(
                    controller: _phonenumberController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.phone,
                            color: Color.fromRGBO(255, 218, 185, 1)),
                        hintText: '\t\tPhone Number',
                        hintStyle: const TextStyle(
                            color: Colors.black45,
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 11.0, horizontal: 16.0),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(255, 218, 185, 1)),
                            borderRadius: BorderRadius.circular(10.0)))),
              )),
          Positioned(
              top: screenSize.height * 0.72,
              left: screenSize.width * 0.056,
              child: SizedBox(
                width: screenSize.width * 0.9,
                height: screenSize.height * 0.07,
                child: TextField(
                    readOnly: true,
                    onTap: _showDataPicker,
                    controller: _dateofbirthController,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.date_range,
                            color: Color.fromRGBO(174, 217, 224, 1)),
                        hintText: '\t\tDate of Birth',
                        hintStyle: const TextStyle(
                            color: Colors.black45,
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 11.0, horizontal: 16.0),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(174, 217, 224, 1)),
                            borderRadius: BorderRadius.circular(10.0)))),
              )),
          Positioned(
              top: screenSize.height * 0.82,
              left: screenSize.width * 0.056,
              width: screenSize.width * 0.9,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Perform the logic for the reset pawssword
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    backgroundColor: const Color.fromRGBO(255, 218, 185, 1)),
                child: const Text('Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Intel',
                        fontWeight: FontWeight.bold)),
              )),
          Positioned(
              top: screenSize.height * 0.925,
              left: screenSize.width * 0.25,
              child: RichText(
                text: TextSpan(
                  text: "Already have an account? ",
                  style: const TextStyle(
                    color: Color.fromARGB(255, 92, 91, 91),
                    fontSize: 15,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Login',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 92, 91, 91),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Handle button click
                          Navigator.pop(context);
                        },
                    ),
                  ],
                ),
              ))
        ],
      ),
    ));
  }
}
