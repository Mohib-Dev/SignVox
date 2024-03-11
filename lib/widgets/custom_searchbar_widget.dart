import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;

  const CustomSearchField({
    Key? key,
    required this.controller,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFF8F8F8),
          suffixIcon: InkWell(
            onTap: () {},
            child: Image.asset("images/Filled.png"),
          ),
          border: InputBorder.none, // Set border to none
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          hintText: "Search...",
          hintStyle: const TextStyle(color: Color(0xFFC6C6C6))),
    );
  }
}
