import 'package:flutter/material.dart';
import 'package:test_app/screens/home_screen.dart';
import 'package:test_app/screens/learn_screen.dart';
import 'package:test_app/screens/learn_screen_2.dart';
import 'package:test_app/screens/live_translation_screen.dart';
import 'package:test_app/screens/profile_setup_screen_2.dart';
import 'package:test_app/widgets/custom_appbar_widget.dart';
import 'package:test_app/widgets/custom_bottom_nav_bar.dart';
import 'package:test_app/widgets/custom_list_Item.dart';
import 'package:test_app/widgets/custom_searchbar_widget.dart';
import 'package:test_app/widgets/custom_text_widgets.dart';

class LearnTutorialsScreen extends StatefulWidget {
  const LearnTutorialsScreen({super.key});

  @override
  State<LearnTutorialsScreen> createState() => _LearnTutorialsScreenState();
}

class _LearnTutorialsScreenState extends State<LearnTutorialsScreen> {
  final TextEditingController controller = TextEditingController();
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
      backgroundColor: Color(0xffF3F3F3),
      appBar: const CustomAppBar(
        title: "Learn",
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: Color(0xFF0073F1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchField(controller: controller),
              const SizedBox(height: 14),
              const CustomText(
                text: "Recently Watched Tutorials",
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 400,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 4),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LearnScreen2(),
                          ));
                        },
                        child: ListItem(
                            imageUrl: "images/person.png",
                            title: "Title text will be here",
                            subtitle:
                                "Description will be here......... Lorem Ipsum is simply dummy text of the printing and typesetting industry. "),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 14),
              const CustomText(
                text: "Recents Reads",
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(height: 14),
              SizedBox(
                height: 260,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/person.png",
                        height: 80,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBarWidget(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
