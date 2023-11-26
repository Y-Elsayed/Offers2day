import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
// import 'package:gap/gap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(
        key: UniqueKey(),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
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

            // const SizedBox(height: 8),
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
                    _navigateToForgetPasswordScreen(context);
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
                      _navigateToHomeScreen(context);
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
          ],
        ),
      ),
    );
  }

  void _navigateToHomeScreen(BuildContext context) {
    // Navigate to the HomeScreen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }
}

void _navigateToForgetPasswordScreen(BuildContext context) {
  // Navigate to the HomeScreen
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ForgetPasswordScreen()),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: null,
      body: Center(
        child: Text('Here will be the offers'),
      ),
    );
  }
}

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: null,
      body: Center(
        child: Text('The Forget Password screen'),
      ),
    );
  }
}
