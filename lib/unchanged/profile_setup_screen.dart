// lib/signup_screen.dart

import 'package:flutter/material.dart';

class ProfileSetupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Setup'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: <Widget>[
            ProfilePictureInput(),
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
            GenderInput(),
            SizedBox(height: 10.0),
            AccountInfoInput(
              label: 'Age',
              icon: Icon(Icons.calendar_today),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20.0),
            SaveButton(),
          ],
        ),
      ),
    );
  }
}

class ProfilePictureInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[200],
              border: Border.all(
                color: Colors.teal,
                width: 2.0,
              ),
            ),
            child: Icon(Icons.camera_alt, size: 50.0, color: Colors.teal),
          ),
        ),
        Positioned(
          bottom: 5.0,
          right: 5.0,
          child: FloatingActionButton(
            mini: true,
            onPressed: () {},
            backgroundColor: Colors.teal,
            child: Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}

class AccountInfoInput extends StatelessWidget {
  final String label;
  final Icon? icon;
  final TextInputType keyboardType;

  const AccountInfoInput({
    required this.label,
    this.icon,
    this.keyboardType = TextInputType.text,
  });

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
      keyboardType: keyboardType,
    );
  }
}

class GenderInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text('Gender:'),
        SizedBox(width: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Radio(
              value: 'Male',
              groupValue: 'gender',
              onChanged: (value) {},
              activeColor: Colors.teal,
            ),
            Text('Male'),
            SizedBox(width: 10.0),
            Radio(
              value: 'Female',
              groupValue: 'gender',
              onChanged: (value) {},
              activeColor: Colors.teal,
            ),
            Text('Female'),
          ],
        ),
      ],
    );
  }
}

class SaveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Save'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal,
        padding: EdgeInsets.symmetric(vertical: 15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
