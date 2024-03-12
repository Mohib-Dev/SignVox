import 'package:flutter/material.dart';
import 'package:test_app/widgets/custom_button_widget.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  bool light = true;
  String otp = '';

  // Function to handle digit button press
  void _onDigitPressed(String digit) {
    setState(() {
      if (otp.length < 4) {
        otp += digit;
      }
    });
  }

  // Function to handle backspace button press
  void _onBackspacePressed() {
    setState(() {
      if (otp.isNotEmpty) {
        otp = otp.substring(0, otp.length - 1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Verify Your Phone',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'We’ve sent you the verification code on +233 *******53.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Type Your OTP Here',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Display the OTP input field
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    4,
                    (index) => Container(
                      width: 60,
                      height: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        otp.length > index ? otp[index] : '-',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButtonWidget(
                  text: "Register", onPressed: () {}, Button_width: 250),
              const SizedBox(
                height: 20,
              ),
              Text(
                textAlign: TextAlign.center,
                'Resend Code',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              // Display the number pad
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                padding: const EdgeInsets.all(40),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  ...List.generate(
                    9,
                    (index) => _buildDigitButton((index + 1).toString()),
                  ),
                  _buildDigitButton('0'),
                  _buildBackspaceButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

// Function to build digit button
  Widget _buildDigitButton(String digit) {
    return SizedBox(
      width: 30,
      height: 30,
      child: ElevatedButton(
        onPressed: () => _onDigitPressed(digit),
        child: Text(
          digit,
          style: TextStyle(fontSize: 18), // Decrease font size
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[300], // Background color of the button
          padding: EdgeInsets.all(12), // Decrease padding
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Rounded corners
          ),
        ),
      ),
    );
  }

// Function to build backspace button
  Widget _buildBackspaceButton() {
    return ElevatedButton(
      onPressed: _onBackspacePressed,
      child: Icon(Icons.backspace),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[300], // Background color of the button
        padding: EdgeInsets.all(12), // Decrease padding
        shape: CircleBorder(), // Circular shape
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: OTPScreen(),
  ));
}
