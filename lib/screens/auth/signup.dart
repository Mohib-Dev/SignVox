import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:test_app/widgets/custom_button_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key});

  @override
  State<SignUpScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
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
              Text(
                'SignUp',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
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
              Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email@Example.com',
                  hintStyle: TextStyle(fontSize: 13.0, color: Colors.grey),
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
              SizedBox(
                width: 200,
                child: IntlPhoneField(
                  focusNode: focusNode,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  languageCode: "en",
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                  onCountryChanged: (country) {
                    print('Country changed to: ' + country.name);
                  },
                ),
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
