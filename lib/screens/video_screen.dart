import 'package:flutter/material.dart';
import 'package:test_app/widgets/custom_bottom_nav_bar.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Stack(fit: StackFit.expand, children: [
          Image.asset(
            'images/person_2.png',
            fit: BoxFit.cover,
          )
        ]),
      ),
      bottomNavigationBar: CustomBottomNavBarWidget(
          selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}
