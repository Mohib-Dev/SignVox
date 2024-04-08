import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:test_app/screens/home_screen.dart';
import 'package:test_app/screens/language_screen.dart';
import 'package:test_app/screens/learn_tutorials.dart';
import 'package:test_app/screens/live_translation_screen.dart';
import 'package:test_app/screens/profile_setup_screen_2.dart';
import 'package:test_app/screens/saved_screen.dart';
import 'package:test_app/utils/constants.dart';
import 'package:test_app/widgets/custom_appbar_widget.dart';
import 'package:test_app/widgets/custom_bottom_nav_bar.dart';
import 'package:test_app/widgets/custom_button_widget.dart';
import 'package:test_app/widgets/custom_text_widgets.dart';

class ProfileSetupScreen3 extends StatefulWidget {
  const ProfileSetupScreen3({super.key});

  @override
  State<ProfileSetupScreen3> createState() => _ProfileSetupScreen3State();
}

class _ProfileSetupScreen3State extends State<ProfileSetupScreen3> {
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
            builder: (context) => const SavedScreen(),
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
        title: "Profile Setup",
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(paddingValue),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: primaryColor,
                        width: 3.0,
                      ),
                    ),
                    child: ClipOval(
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        radius: 60.0,
                        backgroundImage:
                            const AssetImage("images/person_4.png"),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -5.0,
                    right: -5.0,
                    child: RawMaterialButton(
                      onPressed: () {
                        print("Pick image button pressed");
                      },
                      fillColor: Colors.blue,
                      shape: const CircleBorder(),
                      constraints: const BoxConstraints.tightFor(
                        width: 25.0,
                        height: 25.0,
                      ),
                      child: const Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.035),
            //
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomText(text: "Name"),
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
                  hintText: "Muhammad Owais",
                  hintStyle: TextStyle(fontWeight: FontWeight.w400),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: height * 0.025),

            //
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
            SizedBox(height: height * 0.025),
            //
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CustomText(text: "Gender"),
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
                            hintText: "Male",
                            hintStyle: TextStyle(fontWeight: FontWeight.w400),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //
                const SizedBox(width: 10),
                //
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CustomText(text: "Age"),
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
                            hintText: "22",
                            hintStyle: TextStyle(fontWeight: FontWeight.w400),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: height * 0.025),

            //
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomText(text: "Phone"),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.zero,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          //flex: 1,
                          child: Container(
                            height: 50,
                            width: 0,
                            decoration: const BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                            child: const CountryCodePicker(
                              showCountryOnly: true,
                              showOnlyCountryWhenClosed: false,
                              alignLeft: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
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
                ),
              ],
            ),

            //
            SizedBox(height: height * 0.065),

            CustomButtonWidget(
                text: "Save",
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LanguageScreen(),
                  ));
                },
                Button_width: double.infinity),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBarWidget(
          selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}




//  Row(
//               children: [
//                 Expanded(
//                   flex: 2,
//                   child: CountryCodePicker(
//                     //onChanged: print,
//                     initialSelection: 'IT',
//                     //favorite: ['+39', 'FR'],
//                     // optional. Shows only country name and flag
//                     boxDecoration: BoxDecoration(
//                         color: primaryColor, shape: BoxShape.rectangle),
//                     showCountryOnly: true,
//                     // optional. Shows only country name and flag when popup is closed.
//                     showOnlyCountryWhenClosed: false,
//                     // optional. aligns the flag and the Text left
//                     alignLeft: true,
                    
//                   ),
//                 ),
//                 SizedBox(
//                     width:
//                         10.0), // Add horizontal space between dropdown and text field
//                 Expanded(
//                   flex: 6, // Adjust flex value based on desired width
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintText: 'Phone number',
//                     ),
//                   ),
//                 ),
//               ],
//             ),





// Container(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10.0),
//               ),
//               child: TextField(
//                 //controller: controller,
//                 decoration: InputDecoration(
//                   prefixIcon: Padding(
//                     padding: EdgeInsets.zero,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Expanded(
//                           flex: 2,
//                           child: Container(
//                             height: 50,
//                             width: 0,
//                             decoration: const BoxDecoration(
//                                 color: primaryColor,
//                                 borderRadius: BorderRadius.only(
//                                     bottomLeft: Radius.circular(10),
//                                     topLeft: Radius.circular(10))),
//                             child: const CountryCodePicker(
//                               showCountryOnly: true,
//                               showOnlyCountryWhenClosed: false,
//                               alignLeft: true,
//                             ),
//                           ),
//                         ),
//                         const Expanded(flex: 5, child: Text("data"))
//                       ],
//                     ),
//                   ),

//                   //  hintText: "+92 000 0000 0000 0000",
//                   // hintStyle: TextStyle(fontWeight: FontWeight.w400),
//                   border: InputBorder.none,
//                 ),
//               ),
//             ),