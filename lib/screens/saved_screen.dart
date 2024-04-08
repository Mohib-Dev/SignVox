import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/screens/home_screen.dart';
import 'package:test_app/screens/learn_screen.dart';
import 'package:test_app/screens/learn_tutorials.dart';
import 'package:test_app/screens/profile_setup_screen_2.dart';
import 'package:test_app/screens/saved_translation_screen.dart';
import 'package:test_app/utils/constants.dart';
import 'package:test_app/widgets/custom_appbar_widget.dart';
import 'package:test_app/widgets/custom_bottom_nav_bar.dart';
import 'package:test_app/widgets/custom_text_widgets.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
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
      body: Padding(
        padding: const EdgeInsets.all(paddingValue),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        width: double.infinity,
                        height: 84,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset("images/icon_6.svg")),
                            const CustomText(
                              text:
                                  "Translate Text Of two line will be Here \nLorem ipsum is simple Dummy",
                              color: Color(0xff80807F),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const SavedTranslationScreen()));
                                },
                                icon: SvgPicture.asset("images/icon_7.svg")),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBarWidget(
          selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}
