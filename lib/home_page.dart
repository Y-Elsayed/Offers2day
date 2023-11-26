import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: null,
      body: Column(children: [
        SizedBox(
            child: SearchBar(
          hintText: "Search offers2day",
        )),
      ]),
    );
  }
}
