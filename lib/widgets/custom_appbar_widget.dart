import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget leading;
  final List<Widget> actions;
  final Color backgroundColor;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.leading = const SizedBox(),
    this.actions = const [],
    this.backgroundColor = Colors.white,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 16.0,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
      ),
      leading: leading,
      actions: actions,
      backgroundColor: backgroundColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
