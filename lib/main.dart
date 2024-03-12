import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:test_app/screens/auth/login_screen.dart';
import 'package:test_app/screens/auth/otp_screen.dart';
import 'package:test_app/screens/auth/registerd_screen.dart';
import 'package:test_app/screens/learn_tutorials.dart';
import 'package:test_app/screens/password_changed_screen.dart';
import 'package:test_app/screens/profile_setup_screen.dart';
import 'package:test_app/screens/splash.dart';
import 'package:test_app/screens/welcome_screen.dart';
=======
import 'package:test_app/screens/profile_setup_screen.dart';
>>>>>>> 46042754cfbc3fc44b474fac7307ad946dc0e2d2

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
<<<<<<< HEAD
        home: PasswordChangedScreen());
=======
        home: const ProfileSetupScreen());
>>>>>>> 46042754cfbc3fc44b474fac7307ad946dc0e2d2
  }
}
