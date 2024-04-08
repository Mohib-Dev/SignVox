import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/screens/home_screen.dart';
import 'package:test_app/screens/learn_screen.dart';
import 'package:test_app/screens/learn_tutorials.dart';
import 'package:test_app/screens/profile_setup_screen_2.dart';
import 'package:test_app/screens/saved_screen.dart';
import 'package:test_app/utils/constants.dart';
import 'package:test_app/widgets/custom_appbar_widget.dart';
import 'package:test_app/widgets/custom_bottom_nav_bar.dart';
import 'package:test_app/widgets/custom_text_widgets.dart';

class SavedTranslationScreen extends StatefulWidget {
  const SavedTranslationScreen({super.key});

  @override
  State<SavedTranslationScreen> createState() => _SavedTranslationScreenState();
}

class _SavedTranslationScreenState extends State<SavedTranslationScreen> {
  int _selectedIndex = 1;

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
            builder: (context) => const SavedScreen(),
          ),
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LearnScreen(),
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
    return Scaffold(
      backgroundColor: const Color(0xffF3F3F3),
      appBar: const CustomAppBar(
        title: "Saved",
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: Color(0xFF0073F1),
      ),
      //
      body: Padding(
        padding: const EdgeInsets.all(paddingValue),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 410,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8),
                    child: CustomText(
                        fontSize: 14,
                        color: Color(0xff80807F),
                        text:
                            "English \nTranslate Text Of two line will be Here Lorem ipsum is simple Dummy Description will be here......... Lorem Ipsum is simply dummy text of the printing and typesetting industry. Description will be here......... Lorem  Ipsum is simply text of the printing and typesetting industry. Description will be here......... Lorem Ipsum is simply dummy text of the printing and typesetting industry. Description will be here......... Lorem Ipsum is simply dummy text of the printing and typesetting industry. Description will be here......... Lorem Ipsum is simply dummy text of the printing and typesetting industry. Description will be here......... Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Description will be here......... Lorem Ipsum is simply dummy text of the printing and typesetting industry. Description will be here....."),
                  ),
                  //
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("images/icon_6.svg")),
                ],
              ),
            ),
            //
            const SizedBox(height: 20),

            CustomText(
                text: "Transcode Speech",
                fontSize: primaryTextStyle.fontSize!,
                fontWeight: primaryTextStyle.fontWeight!),
            //
            const SizedBox(height: 30),

            Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset("images/waveform.svg"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("images/icon_8.svg"),
                    const SizedBox(width: 15),
                    SvgPicture.asset("images/waveform_2.svg"),
                    const SizedBox(width: 25),
                    SvgPicture.asset("images/logo_1.svg"),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBarWidget(
          selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}
