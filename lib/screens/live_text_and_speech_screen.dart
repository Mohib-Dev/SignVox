import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/screens/home_screen.dart';
import 'package:test_app/screens/learn_screen.dart';
import 'package:test_app/screens/learn_tutorials.dart';
import 'package:test_app/screens/live_text_and_speech_screen_2.dart';
import 'package:test_app/screens/profile_setup_screen_2.dart';
import 'package:test_app/utils/constants.dart';
import 'package:test_app/widgets/custom_appbar_widget.dart';
import 'package:test_app/widgets/custom_bottom_nav_bar.dart';
import 'package:test_app/widgets/custom_text_widgets.dart';

class LiveTextAndSpeechScreen extends StatefulWidget {
  const LiveTextAndSpeechScreen({super.key});

  @override
  State<LiveTextAndSpeechScreen> createState() =>
      _LiveTextAndSpeechScreenState();
}

class _LiveTextAndSpeechScreenState extends State<LiveTextAndSpeechScreen> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

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

    return Scaffold(
      backgroundColor: const Color(0xffF3F3F3),
      appBar: const CustomAppBar(
        title: "Text & Speech",
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: Color(0xFF0073F1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(paddingValue),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Image.asset(
                'images/image 8.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 390.0,
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("images/red_icon.svg")),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const LiveTextAndSpeechScreen2(),
                          ));
                        },
                        icon: SvgPicture.asset("images/vector_11.svg")),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.045),

            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    color: Color(0xff80807F),
                    text:
                        "Yes its Good, If longer Text \nthen it will Appear here like \nthis",
                  ),
                  SvgPicture.asset("images/vector_12.svg")
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBarWidget(
          selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}
