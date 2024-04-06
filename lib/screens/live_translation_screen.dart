import 'package:flutter/material.dart';
import 'package:test_app/screens/home_screen.dart';
import 'package:test_app/screens/learn_tutorials.dart';
import 'package:test_app/screens/live_text_and_speech_screen.dart';
import 'package:test_app/screens/live_text_screen.dart';
import 'package:test_app/screens/profile_setup_screen_2.dart';
import 'package:test_app/utils/constants.dart';
import 'package:test_app/widgets/custom_appbar_widget.dart';
import 'package:test_app/widgets/custom_bottom_nav_bar.dart';
import 'package:test_app/widgets/custom_button_widget.dart';
import 'package:test_app/widgets/custom_text_widgets.dart';

class LiveTranslation extends StatefulWidget {
  const LiveTranslation({super.key});

  @override
  State<LiveTranslation> createState() => _LiveTranslationState();
}

class _LiveTranslationState extends State<LiveTranslation> {
  int _selectedIndex = 2;

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
    //final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffF3F3F3),
      appBar: const CustomAppBar(
        title: "Learn",
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: Color(0xFF0073F1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(paddingValue),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.065),
            Center(
              child: CustomText(
                text: "Choose from the Below ?",
                fontWeight: primaryTextStyle.fontWeight!,
                fontSize: primaryTextStyle.fontSize!,
              ),
            ),
            //
            SizedBox(height: height * 0.065),

            CustomButtonWidget(
                text: "Text",
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LiveTextScreen(),
                  ));
                },
                Button_width: double.infinity),
            SizedBox(height: height * 0.065),

            CustomButtonWidget(
                text: "Text & Speech",
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LiveTextAndSpeechScreen(),
                  ));
                },
                Button_width: double.infinity),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBarWidget(
          selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}
