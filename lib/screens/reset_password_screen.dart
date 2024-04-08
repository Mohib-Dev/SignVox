import 'package:flutter/material.dart';
import 'package:test_app/utils/constants.dart';
import 'package:test_app/widgets/custom_appbar_widget.dart';
import 'package:test_app/widgets/custom_arrow_back_icon.dart';
import 'package:test_app/widgets/custom_button_widget.dart';
import 'package:test_app/widgets/custom_text_widgets.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool _obscureText = false;
  bool _obscureText1 = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(
        leading: CustoomArrowBackIcon(
          onTap: () {},
        ),
        title: "Reset Password",
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: const Color(0xFF0073F1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(paddingValue),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(text: "Please type something you’ll remember"),
            SizedBox(height: height * 0.035),
            Padding(
              padding: const EdgeInsets.all(0),
              child: CustomText(
                text: "New Password",
                fontWeight: primaryTextStyle.fontWeight!,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  hintText: "1239456789",
                  hintStyle: const TextStyle(fontWeight: FontWeight.w400),
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.045),
            CustomText(
              text: "Confirm Password",
              fontWeight: primaryTextStyle.fontWeight!,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextField(
                obscureText: _obscureText1,
                decoration: InputDecoration(
                  hintText: "1239456789",
                  hintStyle: const TextStyle(fontWeight: FontWeight.w400),
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText1 ? Icons.visibility : Icons.visibility_off,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText1 = !_obscureText1;
                      });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.035),
            CustomButtonWidget(
              text: "Submit",
              onPressed: () {},
              Button_width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
