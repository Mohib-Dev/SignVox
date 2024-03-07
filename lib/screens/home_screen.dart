import 'package:flutter/material.dart';
import 'package:test_app/widgets/custom_bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        title: Image.asset("images/signvox_label.png"),
        backgroundColor: Colors.white,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Image.asset("images/alarm_icon.png"),
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Explore",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
            const SizedBox(height: 18),
            BlueRoundedContainer(),
            const SizedBox(height: 20.0),
            const Text(
              "Recommended Videos",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
            const SizedBox(height: 14),
            HorizontalListViewForItems(),
            const SizedBox(height: 14),
            const Text(
              "Recommended Readings",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
            const SizedBox(height: 14),
            HorizontalListViewForItems(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBarWidget(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}

class BlueRoundedContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset("images/pic_1.png"),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("images/mic_icon.png"),
              const SizedBox(height: 20),
              const Text(
                "Live Translation to Text & \nSpeech",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              )
            ],
          )
        ],
      ),
    );
  }
}

class HorizontalListViewForItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => HomeItemCard(index: index),
      ),
    );
  }
}

class HomeItemCard extends StatelessWidget {
  final int index;

  const HomeItemCard({required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        width: 250.0,
        height: 150.0,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Image.asset(
                'images/video_1.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
