// lib/success_screen.dart

import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SuccessText(),
            SizedBox(height: 20.0),
            SignInButton(),
          ],
        ),
      ),
    );
  }
}

class SuccessText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          Icons.check_circle,
          size: 100.0,
          color: Colors.green,
        ),
        SizedBox(height: 10.0),
        Text(
          'Successfully Registered',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10.0),
        Text(
          'Your phone number has been successfully registered, sign in to continue',
          style: TextStyle(fontSize: 16.0, color: Colors.black54),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Sign In'),
      style: ElevatedButton.styleFrom(
        primary: Colors.teal,
        padding: EdgeInsets.symmetric(vertical: 15.0),
      ),
    );
  }
}
