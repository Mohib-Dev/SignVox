import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/utils/constants.dart';
import 'package:test_app/widgets/custom_appbar_widget.dart';
import 'package:test_app/widgets/custom_button_widget.dart';
import 'package:test_app/widgets/custom_text_widgets.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: SvgPicture.asset("images/icon_2.svg"),
        title: "Reset Password",
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: const Color(0xFF0073F1),
      ),
      //
      body: Padding(
        padding: const EdgeInsets.all(paddingValue),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(text: "Please type something you’ll remember"),

            //

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomText(text: "Email"),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const TextField(
                //controller: controller,
                decoration: InputDecoration(
                  hintText: "Email@Example.com",
                  hintStyle: TextStyle(fontWeight: FontWeight.w400),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            //
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomText(text: "Email"),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const TextField(
                //controller: controller,
                decoration: InputDecoration(
                  hintText: "Email@Example.com",
                  hintStyle: TextStyle(fontWeight: FontWeight.w400),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            //
            CustomButtonWidget(
                text: "Submit",
                onPressed: () {},
                Button_width: double.infinity),
          ],
        ),
      ),
    );
  }
}
