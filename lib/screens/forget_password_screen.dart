import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/utils/constants.dart';
import 'package:test_app/widgets/custom_appbar_widget.dart';
import 'package:test_app/widgets/custom_arrow_back_icon.dart';
import 'package:test_app/widgets/custom_button_widget.dart';
import 'package:test_app/widgets/custom_text_widgets.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
        title: "Forget Password",
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: const Color(0xFF0073F1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(paddingValue),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              text: "Reset Password Via",
              fontWeight: FontWeight.w400,
              color: Color(0xff80807F),
            ),
            SizedBox(height: height * 0.035),

            //
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                    hintText: "Phone",
                    hintStyle: const TextStyle(fontWeight: FontWeight.w400),
                    border: InputBorder.none,
                    prefixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                            print(_obscureText);
                          });
                        },
                        icon: _obscureText
                            ? SvgPicture.asset("images/icon_4.svg")
                            : SvgPicture.asset("images/icon_5.svg"))),
              ),
            ),
            SizedBox(height: height * 0.045),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextField(
                obscureText: _obscureText1,
                decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: const TextStyle(fontWeight: FontWeight.w400),
                    border: InputBorder.none,
                    prefixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText1 = !_obscureText1;
                            print(_obscureText1);
                          });
                        },
                        icon: _obscureText1
                            ? SvgPicture.asset("images/icon_4.svg")
                            : SvgPicture.asset("images/icon_5.svg"))),
              ),
            ),
            SizedBox(height: height * 0.055),
            const Spacer(),
            CustomButtonWidget(
              text: "Next",
              onPressed: () {},
              Button_width: double.infinity,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
