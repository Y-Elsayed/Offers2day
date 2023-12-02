// Packages
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter/gestures.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: null,
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/doge.jpg",
                width: 120, height: 120), //Logo placeholder

            const Gap(35),

            Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Sign in",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 92, 91, 91),
                      fontSize: 30),
                )),

            const Gap(35),

            SizedBox(
                width: screenSize.width * 0.9,
                height: 50,
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email, color: Colors.blue),
                      labelText: '\t\tEmail or User Name',
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
                      prefixIcon: const Icon(Icons.lock, color: Colors.orange),
                      labelText: '\t\tPassword',
                      labelStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.orange),
                          borderRadius: BorderRadius.circular(10.0))),
                )),

            const Gap(30),

            Container(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {
                    // forget password logic here
                    Navigator.pushNamed(context, '/forgetpasswordpage');
                  },
                  child: const Text(
                    'Forget Password ?',
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Color.fromARGB(255, 73, 72, 72),
                        fontWeight: FontWeight.bold),
                  ),
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
                      Navigator.pushNamed(context, '/homepage');
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child:
                        const Text('Sign in', style: TextStyle(fontSize: 15)))),

            const Gap(30),

            Container(
                alignment: Alignment.center,
                child: const Text(
                  "Or sign in with",
                  style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16),
                )),
            const Gap(10),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(16.0),
                  onTap: () {
                    // Add your IconButton logic here
                    // navigatorService
                    //     .navigateToSignUpScreen(context); //place holder
                  },
                  child: Container(
                    padding: const EdgeInsets.all(
                        8.0), // Adjust the padding as needed
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.white, // Specify the background color
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // Shadow color
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: const Offset(0, 5), // Offset of the shadow
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.facebook_rounded,
                      color: Colors.blue,
                      size: 30, // Specify the icon color
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16), //Horizonatal distance
              Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(16.0),
                  onTap: () {
                    // Add your IconButton logic here
                    // navigatorService
                    //     .navigateToSignUpScreen(context); //place holder
                  },
                  child: Container(
                    padding: const EdgeInsets.all(
                        8.0), // Adjust the padding as needed
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.white, // Specify the background color
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // Shadow color
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: const Offset(0, 5), // Offset of the shadow
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.facebook_rounded,
                      color: Colors.blue,
                      size: 30, // Specify the icon color
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(16.0),
                  onTap: () {
                    // Add your IconButton logic here
                    // navigatorService
                    //     .navigateToSignUpScreen(context); //place holder
                  },
                  child: Container(
                    padding: const EdgeInsets.all(
                        8.0), // Adjust the padding as needed
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.white, // Specify the background color
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // Shadow color
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: const Offset(0, 5), // Offset of the shadow
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.facebook_rounded,
                      color: Colors.blue,
                      size: 30, // Specify the icon color
                    ),
                  ),
                ),
              )
            ]),

            const Gap(20),

            RichText(
              text: TextSpan(
                text: "Don't have an account? ",
                style: const TextStyle(
                  color: Color.fromARGB(255, 92, 91, 91),
                  fontSize: 16,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Sign Up',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 92, 91, 91),
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Handle button click
                        Navigator.pushNamed(context, '/signuppage');
                      },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
