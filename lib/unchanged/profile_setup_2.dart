import 'package:flutter/material.dart';

class ProfileSetupScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.grey, // Placeholder for profile picture
              child: Icon(
                Icons.person,
                size: 30.0,
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              child: Text('Wide Blue Button'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200.0, 50.0),
                primary: Colors.blue,
              ),
            ),
            Expanded(
              // Ensures the listview fills remaining space
              child: ListView.builder(
                itemCount: 10, // Replace with the actual number of items
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                        'Item ${index + 1}'), // Customize list item content
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
