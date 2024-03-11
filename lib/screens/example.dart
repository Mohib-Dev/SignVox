import 'package:flutter/material.dart';
import 'package:test_app/widgets/custom_bottom_nav_bar.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBarWidget(
          selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}
