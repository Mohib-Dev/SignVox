import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double elevation;
  final double padding;
  final double borderRadius;
  final double Button_width;
  const CustomButtonWidget(
      {super.key,
      required this.text,
      required this.onPressed,
      this.backgroundColor = Colors.blue,
      this.textColor = Colors.white,
      this.elevation = 4.0,
      this.padding = 16.0,
      this.borderRadius = 8.0,
      required this.Button_width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Button_width,
      height: 45,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          elevation: elevation,
          padding: EdgeInsets.all(padding),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
