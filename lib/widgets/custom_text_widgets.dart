import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;

  const CustomText({
    Key? key,
    required this.text,
    this.color = Colors.black,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 16.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}
