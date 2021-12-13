import 'package:flutter/material.dart';
import 'package:tarot/ui/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TAROT',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: SplashScreen() ,
    );
  }
}

