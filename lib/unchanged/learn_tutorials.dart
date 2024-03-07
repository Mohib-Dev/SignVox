// lib/home_screen.dart

import 'package:flutter/material.dart';

class LearnTutorials extends StatefulWidget {
  @override
  _LearnTutorialsState createState() => _LearnTutorialsState();
}

class _LearnTutorialsState extends State<LearnTutorials> {
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
            SearchInput(), // Custom widget for search field
            SizedBox(height: 10.0),
            BoldTextButton(
                text:
                    'Explore Translations'), // Custom widget for bold text button
            SizedBox(height: 20.0),
            Expanded(
              // Ensures vertical list takes remaining space
              child: VerticalListViewForItems(),
            ),
            SizedBox(height: 20.0),
            HorizontalListViewForItems(), // Horizontal list below vertical list
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

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: 'Search for translations',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class BoldTextButton extends StatelessWidget {
  final String text;

  const BoldTextButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: TextButton.styleFrom(
        backgroundColor: Colors.teal,
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class VerticalListViewForItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5, // Adjust the item count as needed
      itemBuilder: (context, index) => ListTile(
        title: Text('Item $index'),
        subtitle: Text('This is a subtitle for item $index'),
      ),
    );
  }
}

class HorizontalListViewForItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5, // Adjust the item count as needed
        itemBuilder: (context, index) => Container(
          width: 150.0,
          color: Colors.grey[200],
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          child: Center(
            child: Text('Item $index'),
          ),
        ),
      ),
    );
  }
}
