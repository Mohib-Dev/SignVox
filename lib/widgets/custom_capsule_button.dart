import 'package:flutter/material.dart';
import 'package:test_app/utils/constants.dart';

class CapsuleButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color foregroundColor;
  final double elevation;
  final double width;
  final bool showBorder;
  const CapsuleButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = primaryColor,
    this.foregroundColor = Colors.white,
    this.fontSize = 16,
    this.fontWeight = FontWeight.bold,
    this.elevation = 2.0,
    required this.width,
    this.showBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: elevation,
            blurRadius: elevation,
            offset: Offset(0, elevation),
          ),
        ],
        border: showBorder
            ? Border.all(
                color: Colors.black,
                width: 2.0,
              )
            : null,
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: width, vertical: 5.0),
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          primary: foregroundColor,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
