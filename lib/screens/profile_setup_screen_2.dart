import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/screens/home_screen.dart';
import 'package:test_app/screens/learn_tutorials.dart';
import 'package:test_app/screens/live_translation_screen.dart';
import 'package:test_app/screens/profile_setup_screen_3.dart';
import 'package:test_app/utils/constants.dart';
import 'package:test_app/widgets/custom_appbar_widget.dart';
import 'package:test_app/widgets/custom_bottom_nav_bar.dart';
import 'package:test_app/widgets/custom_button_widget.dart';
import 'package:test_app/widgets/custom_logo_button.dart';
import 'package:test_app/widgets/custom_text_widgets.dart';

class ProfileSetupScreen2 extends StatefulWidget {
  const ProfileSetupScreen2({super.key});

  @override
  State<ProfileSetupScreen2> createState() => _ProfileSetupScreen2State();
}

class _ProfileSetupScreen2State extends State<ProfileSetupScreen2> {
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
      appBar: CustomAppBar(
        title: "Profile",
        fontSize: primaryTextStyle.fontSize!,
        fontWeight: primaryTextStyle.fontWeight!,
        color: primaryColor,
      ),
      //
      body: Padding(
        padding: const EdgeInsets.all(paddingValue),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 55,
                child: ClipOval(
                  child: Image.asset(
                    "images/person_3.png",
                    fit: BoxFit.cover,
                    width: 110,
                    height: 110,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            const CustomText(
              text: "Alex Marshall",
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(height: 12),
            const CustomText(
              text: "@alex_marshall",
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff707070),
            ),
            const SizedBox(height: 12),
            CustomButtonWidget(
                text: "Edit Profile",
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProfileSetupScreen3(),
                  ));
                },
                elevation: 0,
                borderRadius: 12,
                Button_width: double.infinity),
            const SizedBox(height: 12),

            //
            const Divider(),
            //
            ListTile(
              leading: Image.asset("images/Shape.png"),
              title: const Text('Profile Information'),
              trailing: Image.asset("images/Vector 9.png"),
              onTap: () {},
            ),
            ListTile(
              leading: SvgPicture.asset("images/img_4.svg"),
              title: const Text('My Activities'),
              trailing: Image.asset("images/Vector 9.png"),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset("images/Component 13.png"),
              title: const Text('Language'),
              trailing: Image.asset("images/Vector 9.png"),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset("images/vector_10.png"),
              title: const Text('Help & FAQ\'s'),
              trailing: Image.asset("images/Vector 9.png"),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset("images/user-support.png"),
              title: const Text('Support'),
              trailing: Image.asset("images/Vector 9.png"),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset("images/Group 8821.png"),
              title: const Text('Setting'),
              trailing: Image.asset("images/Vector 9.png"),
              onTap: () {},
            ),
            //
            const SizedBox(height: 12),
            const CustomLogoButton()
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBarWidget(
          selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}
