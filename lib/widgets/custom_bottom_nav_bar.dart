import 'package:flutter/material.dart';

class CustomBottomNavBarWidget extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavBarWidget({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  _CustomBottomNavBarWidgetState createState() =>
      _CustomBottomNavBarWidgetState();
}

class _CustomBottomNavBarWidgetState extends State<CustomBottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            5, // Adjusted for four items: Home, Profile, Settings, Bookmarks
            (index) => InkWell(
              onTap: () => widget.onItemTapped(index),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.selectedIndex == index
                      ? Colors.white
                      : Colors.transparent,
                ),
                child: _buildIcon(index),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIcon(int index) {
    switch (index) {
      case 0:
        return Image.asset(
          "images/home.png",
          color: widget.selectedIndex == index ? Colors.blue : Colors.white,
        );
      case 1:
        return Image.asset(
          "images/Vector.png",
          color: widget.selectedIndex == index ? Colors.blue : Colors.white,
        );
      case 2:
        return Image.asset(
          "images/img_1.png",
          color: widget.selectedIndex == index ? Colors.blue : Colors.white,
        );
      case 3:
        return Image.asset(
          "images/Vector (1).png",
          color: widget.selectedIndex == index ? Colors.blue : Colors.white,
        );
      case 4:
        return Image.asset(
          "images/user.png",
          color: widget.selectedIndex == index ? Colors.blue : Colors.white,
        );

      default:
        return SizedBox.shrink();
    }
  }
}
