import 'package:flutter/material.dart';
import 'package:test_app/widgets/custom_button_widget.dart';

class RegisterdScreen extends StatelessWidget {
  const RegisterdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "images/registerd.png",
              height: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Successfully Registered',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 260,
              child: Text(
                textAlign: TextAlign.center,
                'Your phone number has been successfully registered, sign in to continue',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            CustomButtonWidget(
                text: "Sign In", onPressed: () {}, Button_width: 330),
          ],
        ),
      ),
    );
  }
}
