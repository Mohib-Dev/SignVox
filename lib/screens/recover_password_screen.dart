import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:test_app/utils/constants.dart';
import 'package:test_app/widgets/custom_appbar_widget.dart';
import 'package:test_app/widgets/custom_arrow_back_icon.dart';
import 'package:test_app/widgets/custom_button_widget.dart';
import 'package:test_app/widgets/custom_text_widgets.dart';

class RecoverPasswordScreen extends StatefulWidget {
  const RecoverPasswordScreen({super.key});

  @override
  State<RecoverPasswordScreen> createState() => _RecoverPasswordScreenState();
}

class _RecoverPasswordScreenState extends State<RecoverPasswordScreen> {
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
        //
        body: Padding(
            padding: const EdgeInsets.all(paddingValue),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const CustomText(
                text:
                    "Please enter your phone number to request a password reset",
                color: Color(0xff80807F),
              ),
              SizedBox(height: height * 0.055),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomText(text: "Phone"),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.zero,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            //flex: 1,
                            child: Container(
                              height: 50,
                              width: 0,
                              decoration: const BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      topLeft: Radius.circular(10))),
                              child: const CountryCodePicker(
                                showCountryOnly: true,
                                showOnlyCountryWhenClosed: false,
                                alignLeft: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const TextField(
                        //controller: controller,
                        decoration: InputDecoration(
                          hintText: "Phone Number",
                          hintStyle: TextStyle(fontWeight: FontWeight.w400),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.055),
              CustomButtonWidget(
                  text: "Send", onPressed: () {}, Button_width: double.infinity)
            ])));
  }
}
