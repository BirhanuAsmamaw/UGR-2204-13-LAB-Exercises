import 'package:flutter/material.dart';
import 'screenOne.dart'; // Import the ScreenOne widget
import 'screenTwo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenOne(), // Use ScreenOne as the initial route
        '/second': (context) => ScreenTwo()
      },
    );
  }
}
