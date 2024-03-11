import 'package:flutter/material.dart';
import 'package:test_app/screens/auth/login.dart';
import 'package:test_app/screens/learn_tutorials.dart';
import 'package:test_app/screens/splash.dart';
import 'package:test_app/screens/welcome_screen.dart';

import 'screens/auth/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SignVox',
        theme: ThemeData(),
        home: SignUpScreen());
  }
}
