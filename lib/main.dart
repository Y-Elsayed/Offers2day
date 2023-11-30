// Packages
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Files
import 'my_app.dart';
// import 'package:gap/gap.dart';

void main() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // Set status bar color to transparent
    statusBarIconBrightness: Brightness.dark, // Use dark icons for status bar
  ));
  runApp(const MyApp());
}
