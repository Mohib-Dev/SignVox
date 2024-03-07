// lib/home_screen.dart

import 'package:flutter/material.dart';

class LearnScreen extends StatefulWidget {
  @override
  _LearnScreenState createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignVox'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: <Widget>[
            RoundedImageContainer(), // New custom widget for image container
            SizedBox(height: 20.0),
            Flexible(
              // Flexible widget to handle potential content overflow
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularized in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class RoundedImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0, // Adjust height as needed
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(
              'assets/images/home_image.png'), // Replace with your image path
          fit: BoxFit.cover, // Ensure image covers the container
        ),
      ),
    );
  }
}
