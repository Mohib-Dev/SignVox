// lib/signup_screen.dart

import 'package:flutter/material.dart';

class SignUpEmailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: <Widget>[
            SigVoxLogo(),
            SizedBox(height: 20.0),
            SignUpText(),
            SizedBox(height: 20.0),
            AccountInfoInput(
              label: 'Email',
              icon: Icon(Icons.email),
            ),
            SizedBox(height: 10.0),
            AccountInfoInput(
              label: 'Password',
              icon: Icon(Icons.lock),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialSignInButton(
                  imageUrl: 'assets/images/google_logo.png',
                  text: 'Sign Up with Google',
                ),
                SizedBox(width: 20.0),
                SocialSignInButton(
                  imageUrl: 'assets/images/email_logo.png',
                  text: 'Sign Up with Email',
                ),
              ],
            ),
            SizedBox(height: 20.0),
            LoginOption(),
          ],
        ),
      ),
    );
  }
}

class SigVoxLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Text(
        'SignVox',
        style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class SignUpText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome to SignVox',
      style: TextStyle(fontSize: 20.0),
      textAlign: TextAlign.center,
    );
  }
}

class AccountInfoInput extends StatelessWidget {
  final String label;
  final Icon? icon;

  const AccountInfoInput({required this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: icon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class LoginOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Don\'t have an account?'),
        SizedBox(width: 5.0),
        GestureDetector(
          onTap: () {},
          child: Text(
            'Sign Up',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class SocialSignInButton extends StatelessWidget {
  final String imageUrl;
  final String text;

  const SocialSignInButton({required this.imageUrl, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl, height: 30.0),
            SizedBox(width: 10.0),
            Text(text),
          ],
        ),
      ),
    );
  }
}
