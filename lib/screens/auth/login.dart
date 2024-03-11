import 'package:flutter/material.dart';
import 'package:test_app/widgets/custom_button_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    bool _isObscure = true;
    bool _rememberMe = false;
    bool light = true;
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
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                "images/signvox_label.png",
                height: 200,
              ),
              SizedBox(
                height: 50,
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Welcome to Sign',
                    ),
                    TextSpan(
                      text: 'Voc',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.blue,
                  ),
                  border: InputBorder.none, // Remove the border
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 16.0), // Adjust padding as needed
                  filled: true,
                  fillColor: Colors.grey[200], // Add background color
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(
                    Icons.key,
                    color: Colors.blue,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: togglePasswordVisibility,
                  ),
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Transform.scale(
                    scale: 0.5, // Adjust the scale factor as needed
                    child: Switch(
                      // This bool value toggles the switch.
                      value: light,
                      overlayColor: overlayColor,
                      trackColor: trackColor,
                      thumbColor:
                          const MaterialStatePropertyAll<Color>(Colors.white),
                      onChanged: (bool value) {
                        // This is called when the user toggles the switch.
                        setState(() {
                          light = value;
                        });
                      },
                    ),
                  ),
                  Text(
                    'Remember Me',
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      // Handle forget password
                    },
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),

              CustomButtonWidget(
                  text: "Login", onPressed: () {}, Button_width: 300),
              Spacer(), // Add Spacer widget to push the following row to the bottom
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Signup',
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
      ),
    );
  }
}
