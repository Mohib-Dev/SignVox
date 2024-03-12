<<<<<<< HEAD
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:test_app/widgets/custom_button_widget.dart';
import 'package:image_picker/image_picker.dart';

class ProfileSetpScreen extends StatefulWidget {
  const ProfileSetpScreen({Key? key}) : super(key: key);

  @override
  State<ProfileSetpScreen> createState() => _ProfileSetpScreen();
}

class _ProfileSetpScreen extends State<ProfileSetpScreen> {
  bool light = true;
  String? _selectedGender;
  TextEditingController _ageController = TextEditingController();
  String? _imagePath;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _imagePath = pickedFile.path;
      } else {
        print('No image selected.');
      }
=======
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
>>>>>>> 46042754cfbc3fc44b474fac7307ad946dc0e2d2
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Profile Setup',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: _pickImage,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[300],
                  ),
                  child: _imagePath != null
                      ? ClipOval(
                          child: Image.file(
                            AssetImage(_imagePath!) as File,
                            fit: BoxFit.cover,
                          ),
                        )
                      : Icon(
                          Icons.person,
                          size: 100,
                          color: Colors.grey,
                        ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Muhammad Owais',
                  hintStyle: TextStyle(fontSize: 13.0, color: Colors.grey),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 16.0,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email@Example.com',
                  hintStyle: TextStyle(fontSize: 13.0, color: Colors.grey),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 16.0,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Gender",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      DropdownButtonFormField<String>(
                        value: _selectedGender,
                        hint: Text(
                          'Select Gender',
                        ),
                        onChanged: (newValue) {
                          setState(() {
                            _selectedGender = newValue;
                          });
                        },
                        items: ['Male', 'Female']
                            .map((gender) => DropdownMenuItem<String>(
                                  value: gender,
                                  child: Text(gender),
                                ))
                            .toList(),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 12.0,
                            horizontal: 16.0,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ],
                  )),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Age",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextField(
                          controller: _ageController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Enter Age',
                            hintStyle:
                                TextStyle(fontSize: 13.0, color: Colors.grey),
                            filled: true,
                            fillColor: Colors.grey[200],
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 12.0,
                              horizontal: 16.0,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Location",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Search Selection Field',
                          hintStyle:
                              TextStyle(fontSize: 13.0, color: Colors.grey),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 12.0,
                            horizontal: 16.0,
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                        ),
                      ),
                    ],
                  )),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.location_pin,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CustomButtonWidget(
                  text: "Save", onPressed: () {}, Button_width: 300)
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProfileSetpScreen(),
  ));
}
=======
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
>>>>>>> 46042754cfbc3fc44b474fac7307ad946dc0e2d2
