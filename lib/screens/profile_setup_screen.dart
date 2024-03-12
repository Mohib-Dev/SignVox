import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/utils/constants.dart';
import 'package:test_app/widgets/custom_appbar_widget.dart';
import 'package:test_app/widgets/custom_bottom_nav_bar.dart';
import 'package:test_app/widgets/custom_button_widget.dart';
import 'package:test_app/widgets/custom_logo_button.dart';
import 'package:test_app/widgets/custom_text_widgets.dart';

class ProfileSetupScreen extends StatefulWidget {
  const ProfileSetupScreen({super.key});

  @override
  State<ProfileSetupScreen> createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends State<ProfileSetupScreen> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
                onPressed: () {},
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
            const SizedBox(height: 22),
            const CustomLogoButton()
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBarWidget(
          selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}
