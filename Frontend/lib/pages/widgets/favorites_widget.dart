// favorites_widget.dart
import 'dart:ffi';

import 'package:flutter/material.dart';

class ContainerWithClickableHeart extends StatefulWidget {
  final VoidCallback onRemove; // Change the callback to accept an int parameter
  final Key itemKey;
  final int index;

  const ContainerWithClickableHeart({
    Key? key,
    required this.onRemove,
    required this.itemKey,
    required this.index,
  }) : super(key: key);

  @override
  _ContainerWithClickableHeartState createState() => _ContainerWithClickableHeartState();
}

class _ContainerWithClickableHeartState extends State<ContainerWithClickableHeart> {
  bool isHeartVisible = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: const DecorationImage(
            image: NetworkImage('https://via.placeholder.com/75x75'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 8.0,
              right: 8.0,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isHeartVisible = !isHeartVisible; // Toggle the visibility
                  });
      
                  //widget.onRemove(widget.index);
                },
                child: Icon(
                  isHeartVisible ? Icons.favorite : Icons.favorite_border,
                  color: Colors.red,
                  size: 32.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
