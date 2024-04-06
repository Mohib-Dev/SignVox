import 'package:flutter/material.dart';
import 'package:test_app/screens/home_screen.dart';
import 'package:test_app/screens/learn_tutorials.dart';
import 'package:test_app/screens/live_translation_screen.dart';
import 'package:test_app/screens/profile_setup_screen_2.dart';
import 'package:test_app/utils/constants.dart';
import 'package:test_app/widgets/custom_appbar_widget.dart';
import 'package:test_app/widgets/custom_bottom_nav_bar.dart';
import 'package:test_app/widgets/custom_text_widgets.dart';

class LearnScreen extends StatefulWidget {
  const LearnScreen({super.key});

  @override
  State<LearnScreen> createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {
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
    return Scaffold(
      appBar: CustomAppBar(
        title: "Introduction",
        color: primaryColor,
        fontWeight: primaryTextStyle.fontWeight!,
        fontSize: primaryTextStyle.fontSize!,
      ),
      //
      body: Padding(
        padding: const EdgeInsets.all(paddingValue),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              CustomText(
                text: "Gary Morgan & Bencie Woll",
                color: primaryColor,
                fontWeight: primaryTextStyle.fontWeight!,
                fontSize: 16,
              ),
              const SizedBox(height: 12),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (context) => LiveTranslation(),
                  // ));
                },
                child: const CustomText(
                    color: Color(0xff7B7C7E),
                    fontSize: secondaryTextSize,
                    fontWeight: FontWeight.w400,
                    text:
                        "Sign Languages have most likely existed for as long as Deaf people have come together to communicate. That is, we can assume that sign languages are as old as human communication. Over the millennia sign languages have changed and disappeared, while new ones have come into existence (Armstrong strokoe & wilcox 1994, 1995; Lane Pillard & French 2000). Sign Languages are used in Deaf Communities around the world. Each community uses its own unique sign language. There are Links and Similarities between sign languages in the same way that spoken languages fall into groups of language families. Certain communities have adopted naturally or through language planning, the sign language of another deaf community. Sign Languages have been systematically studied as languages only since the 1950s and early 1960s (e.g. Tervoort 1959; Stokoe, Casterline & Croneberg 1965). While a formal Linguistic description was being proposed for American Sign Languages (ASL), Tervoort tackled the question of how these languages were acquired by young deaf children (Tervoort 1953, 1959). Since these groundbreaking efforts, studies have not only been carried out on Deaf children but also hearing children raised in sign environments and the acquisition by both groups of sign languages as a first language. While sign languages are ruled-governed in similar ways to spoken languages, they have unique features that distinguish them from spoken languages. For example, sign languages often use space and movement to convey meaning, and they can be produced simultaneously with speech. As a result, sign languages can be more visually complex than spoken languages, and they can convey information in ways that are not possible in spoken languages."),
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
