import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/screens/home_screen.dart';
import 'package:test_app/screens/learn_tutorials.dart';
import 'package:test_app/screens/live_translation_screen.dart';
import 'package:test_app/screens/profile_setup_screen_2.dart';
import 'package:test_app/utils/constants.dart';
import 'package:test_app/widgets/custom_appbar_widget.dart';
import 'package:test_app/widgets/custom_bottom_nav_bar.dart';
import 'package:test_app/widgets/custom_text_widgets.dart';

class HelpAndFAQScreen extends StatefulWidget {
  const HelpAndFAQScreen({super.key});

  @override
  State<HelpAndFAQScreen> createState() => _HelpAndFAQScreenState();
}

class _HelpAndFAQScreenState extends State<HelpAndFAQScreen> {
  int _selectedIndex = 4;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LearnTutorialsScreen(),
          ),
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LiveTranslation(),
          ),
        );
        break;
      case 3:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LearnTutorialsScreen(),
          ),
        );
        break;
      case 4:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfileSetupScreen2(),
          ),
        );
        break;

      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xffF3F3F3),
      appBar: const CustomAppBar(
        title: "Help & FAQ",
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(paddingValue),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: SvgPicture.asset("images/logo_2.svg")),
              SizedBox(height: height * 0.020),
              const CustomText(
                  text:
                      "Welcome to SignVox Help & FAQ Page! we’re thrilled to have you on Board and ready to help you navigate through our sign language to text and speech Mobile app. If you Can’t find the information you need here, Feel free to reach out to our support team at "),
              const CustomText(
                text: "[support@email.com]",
                color: primaryColor,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(height: height * 0.030),
              CustomText(
                text: "Frequently asked Questions:",
                fontWeight: primaryTextStyle.fontWeight!,
                fontSize: primaryTextStyle.fontSize!,
              ),
              SizedBox(height: height * 0.015),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "1. What is SignVox?",
                      fontWeight: primaryTextStyle.fontWeight!,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.keyboard_arrow_up_rounded,
                          color: primaryColor,
                        ))
                  ],
                ),
                subtitle: const CustomText(
                    fontSize: 16,
                    text:
                        "SignVox is a revolutionary Mobile Application designed to seamlessy translate sign language into text and speech. Our Mission is to enhance communication accessibilty for the deaf and hearing Community."),
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "2. How does SignVox Work? ",
                      fontWeight: primaryTextStyle.fontWeight!,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: primaryColor,
                        )),
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomText(
                      text: "Title text of Question one line will be....",
                      fontWeight: FontWeight.w500,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: primaryColor,
                        )),
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomText(
                      text: "Title text of Question one line will be....",
                      fontWeight: FontWeight.w500,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: primaryColor,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBarWidget(
          selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}
