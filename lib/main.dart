import 'package:chrome_management_app/views/login.dart';
import 'package:flutter/material.dart';

/// Intial function runs into Google Sign In view.
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  // Build a root widget and navigate it to LogIn view so it
  // can navigate further on to other views.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LogIn(),
    );
  }
}
