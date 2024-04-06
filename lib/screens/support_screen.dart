import 'package:flutter/material.dart';
import 'package:test_app/screens/help_and_faq_screen.dart';
import 'package:test_app/screens/home_screen.dart';
import 'package:test_app/screens/learn_tutorials.dart';
import 'package:test_app/screens/live_translation_screen.dart';
import 'package:test_app/screens/profile_setup_screen_2.dart';
import 'package:test_app/utils/constants.dart';
import 'package:test_app/widgets/custom_appbar_widget.dart';
import 'package:test_app/widgets/custom_bottom_nav_bar.dart';
import 'package:test_app/widgets/custom_button_widget.dart';
import 'package:test_app/widgets/custom_text_widgets.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
              child: CustomText(text: "Issue"),
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
                  hintText: "Title of the Query",
                  hintStyle: TextStyle(fontWeight: FontWeight.w400),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            //
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomText(text: "Description"),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              height: 180.0,
              child: const TextField(
                //controller: controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: "Write your text here...........",
                  hintStyle: TextStyle(fontWeight: FontWeight.w400),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 30),
            CustomButtonWidget(
                text: "Send",
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HelpAndFAQScreen(),
                  ));
                },
                Button_width: double.infinity)
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBarWidget(
          selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}
