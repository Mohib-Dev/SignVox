import 'package:flutter/material.dart';
import 'package:test_app/widgets/custom_button_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isObscure = true;
  bool _rememberMe = false;
  bool light = true;
  FocusNode focusNode = FocusNode();
  void togglePasswordVisibility() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  final MaterialStateProperty<Color?> trackColor =
      MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      // Track color when the switch is selected.
      if (states.contains(MaterialState.selected)) {
        return Colors.blue;
      }
      return null;
    },
  );
  final MaterialStateProperty<Color?> overlayColor =
      MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.blue.withOpacity(0.54);
      }
      if (states.contains(MaterialState.disabled)) {
        return Colors.grey.shade400;
      }

      return null;
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Image.asset(
              "images/logo.jpg",
              height: 100,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'SignUp',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Name",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Muhammad Owais',
                hintStyle: TextStyle(fontSize: 13.0, color: Colors.grey),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 16.0,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Email",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email@Example.com',
                hintStyle: TextStyle(fontSize: 13.0, color: Colors.grey),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 16.0,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Password",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              obscureText: _isObscure,
              decoration: InputDecoration(
                hintText: '1234567',
                hintStyle: TextStyle(fontSize: 13.0, color: Colors.grey),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 16.0,
                ),
                filled: true,
                fillColor: Colors.grey[200],
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObscure ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: togglePasswordVisibility,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Confirm Password",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: '**********',
                hintStyle: TextStyle(fontSize: 13.0, color: Colors.grey),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 16.0,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Checkbox(
                  value: _rememberMe,
                  onChanged: (bool? value) {
                    setState(() {
                      _rememberMe = value ?? false;
                    });
                  },
                  activeColor: Colors.blue, // Color when checked
                ),
                Text(
                  'I agree to',
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
                TextButton(
                    onPressed: () {
                      // Handle forget password
                    },
                    child: Text(
                      'All Term & Conditions',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                      ),
                    )),
              ],
            ),
            SizedBox(height: 30),
            CustomButtonWidget(
                text: "Login", onPressed: () {}, Button_width: 300),
            //Spacer(),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Already, have an account?',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
