import 'package:flutter/material.dart';

class OffersWidget extends StatefulWidget {
  const OffersWidget({super.key});

  @override
  State<OffersWidget> createState() => _OffersWidgetState();
}

class _OffersWidgetState extends State<OffersWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: const DecorationImage(
            image: NetworkImage('https://via.placeholder.com/75x75'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
