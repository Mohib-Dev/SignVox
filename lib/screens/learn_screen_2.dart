import 'package:flutter/material.dart';
import 'package:test_app/screens/home_screen.dart';
import 'package:test_app/screens/learn_screen.dart';
import 'package:test_app/screens/learn_tutorials.dart';
import 'package:test_app/screens/live_translation_screen.dart';
import 'package:test_app/screens/profile_setup_screen_2.dart';
import 'package:test_app/utils/constants.dart';
import 'package:test_app/widgets/custom_appbar_widget.dart';
import 'package:test_app/widgets/custom_bottom_nav_bar.dart';
import 'package:test_app/widgets/custom_text_widgets.dart';

class LearnScreen2 extends StatefulWidget {
  const LearnScreen2({super.key});

  @override
  State<LearnScreen2> createState() => _LearnScreen2State();
}

class _LearnScreen2State extends State<LearnScreen2> {
  int _selectedIndex = 3;

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
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffF3F3F3),
      appBar: CustomAppBar(
        title: "Learn",
        color: primaryColor,
        fontWeight: primaryTextStyle.fontWeight!,
        fontSize: primaryTextStyle.fontSize!,
      ),
      body: Padding(
        padding: const EdgeInsets.all(paddingValue),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: const DecorationImage(
                  image: AssetImage('images/person_5.png'),
                  fit: BoxFit.cover,
                ),
              ),
              constraints: BoxConstraints.expand(
                height: MediaQuery.of(context).size.height * 0.3,
              ),
            ),
            //
            SizedBox(height: height * 0.035),
            CustomText(
              text: "Title text will be here",
              fontSize: primaryTextStyle.fontSize!,
              fontWeight: primaryTextStyle.fontWeight!,
            ),
            SizedBox(height: height * 0.020),

            //
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => LearnScreen(),
                ));
              },
              child: CustomText(
                text:
                    "Description will be here......... Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.............. It has survived not only five centuries, but................. also the leap into electronic typesetting, remaining essentially unchanged......... It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            //
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBarWidget(
          selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}
