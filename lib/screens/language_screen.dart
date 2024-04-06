import 'package:flutter/material.dart';
import 'package:test_app/screens/home_screen.dart';
import 'package:test_app/screens/learn_tutorials.dart';
import 'package:test_app/screens/live_translation_screen.dart';
import 'package:test_app/screens/profile_setup_screen_2.dart';
import 'package:test_app/screens/support_screen.dart';
import 'package:test_app/utils/constants.dart';
import 'package:test_app/widgets/custom_appbar_widget.dart';
import 'package:test_app/widgets/custom_bottom_nav_bar.dart';
import 'package:test_app/widgets/custom_rounded_list_tile.dart';
import 'package:test_app/widgets/custom_text_widgets.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
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
        title: "Languages",
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(paddingValue),
        child: Column(
          children: [
            const CustomText(
              text: "Choose the language you want to \nlearn",
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: height * 0.025,
            ),
            RoundedListTile(
              title: "English",
              imagePath: "images/flag_1.svg",
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SupportScreen(),
                ));
              },
            ),
            RoundedListTile(
              title: "Spain",
              imagePath: "images/flag_2.svg",
              onPressed: () {},
            ),
            RoundedListTile(
              title: "French",
              imagePath: "images/flag_3.svg",
              onPressed: () {},
            ),
            RoundedListTile(
              title: "Belgian",
              imagePath: "images/flag_4.svg",
              onPressed: () {},
            ),
            RoundedListTile(
              title: "Turkish",
              imagePath: "images/flag_5.svg",
              onPressed: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBarWidget(
          selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}
