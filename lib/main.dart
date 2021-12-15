import 'package:flutter/material.dart';
import 'package:tarot/ui/numerology.dart';
import 'package:tarot/ui/profile.dart';
import 'package:tarot/ui/splash_screen.dart';
import 'package:tarot/ui/tab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TAROT',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home:TabBarWidget() ,
    );
  }
}

