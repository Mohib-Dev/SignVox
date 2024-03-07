// lib/signup_screen.dart

import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
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
              label: 'Name',
              icon: Icon(Icons.person),
            ),
            SizedBox(height: 10.0),
            AccountInfoInput(
              label: 'Email',
              icon: Icon(Icons.email),
            ),
            SizedBox(height: 10.0),
            AccountInfoInput(
              label: 'Phone',
              icon: Icon(Icons.phone),
            ),
            SizedBox(height: 10.0),
            AccountInfoInput(
              label: 'Password',
              icon: Icon(Icons.lock),
            ),
            SizedBox(height: 20.0),
            TermsAndConditions(),
            SizedBox(height: 20.0),
            PrimaryButton(text: 'Register'),
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

class TermsAndConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Checkbox(
          value: false,
          onChanged: (value) {},
        ),
        Text('I agree to all'),
        GestureDetector(
          onTap: () {},
          child: Text(
            'Terms & Conditions',
            style: TextStyle(color: Colors.teal),
          ),
        ),
      ],
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final String text;

  const PrimaryButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(text),
      style: ElevatedButton.styleFrom(
        primary: Colors.teal,
        padding: EdgeInsets.symmetric(vertical: 15.0),
        shape: RoundedRectangleBorder(
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
            'Log In',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
