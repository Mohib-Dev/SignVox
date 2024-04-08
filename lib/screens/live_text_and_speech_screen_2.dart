import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/screens/home_screen.dart';
import 'package:test_app/screens/learn_screen.dart';
import 'package:test_app/screens/learn_tutorials.dart';
import 'package:test_app/screens/profile_setup_screen_2.dart';
import 'package:test_app/screens/saved_screen.dart';
import 'package:test_app/utils/constants.dart';
import 'package:test_app/widgets/custom_bottom_nav_bar.dart';
import 'package:test_app/widgets/custom_capsule_button.dart';

class LiveTextAndSpeechScreen2 extends StatefulWidget {
  const LiveTextAndSpeechScreen2({super.key});

  @override
  State<LiveTextAndSpeechScreen2> createState() =>
      _LiveTextAndSpeechScreen2State();
}

class _LiveTextAndSpeechScreen2State extends State<LiveTextAndSpeechScreen2> {
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

  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          'images/image 8 (1).png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const Spacer(),
            Center(
              child: Container(
                height: 260,
                width: 360,
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    Text(
                      "Do you Want to End this \nTranslation",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 24,
                          fontWeight: primaryTextStyle.fontWeight),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CapsuleButton(
                            width: 25,
                            text: "Yes & Save",
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProfileSetupScreen2(),
                              ));
                            },
                          ),
                          CapsuleButton(
                            width: 25,
                            text: "     Yes      ",
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    CapsuleButton(
                      showBorder: true,
                      width: 140,
                      foregroundColor: Colors.black,
                      text: "Cancel",
                      backgroundColor: Colors.white70,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset("images/waveform.svg"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("images/waveform_2.svg"),
                    const SizedBox(width: 25),
                    SvgPicture.asset("images/logo_1.svg"),
                  ],
                ),
              ],
            ),

            // PolygonWaveform(
            //     showActiveWaveform: true,
            //     activeColor: Colors.blue,
            //     style: PaintingStyle.fill,
            //     samples: samples,
            //     height: 100,
            //     width: double.infinity,
            //     elapsedDuration: Duration(seconds: 4),
            //     maxDuration: Duration(seconds: 10)),

            const SizedBox(height: 50),
            GestureDetector(
                onTap: () {}, child: SvgPicture.asset("images/icon_11.svg")),
          ],
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: CustomBottomNavBarWidget(
              selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
        ),
      ]),
    );
  }
}
