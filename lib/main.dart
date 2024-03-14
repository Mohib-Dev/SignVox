import 'package:flutter/material.dart';
import 'package:test_app/screens/profile_setup_screen.dart';
import 'package:test_app/screens/profile_setup_screen_2.dart';

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
        home: const ProfileSetupScreen2());
  }
}
