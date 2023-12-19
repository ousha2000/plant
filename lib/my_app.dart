import 'package:flutter/material.dart';
import 'greeting_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Care Guide',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: GreetingScreen(),
    );
  }
}
