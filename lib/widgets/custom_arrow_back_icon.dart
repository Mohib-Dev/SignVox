import 'package:flutter/material.dart';

class CustoomArrowBackIcon extends StatelessWidget {
  final void Function()? onTap;
  const CustoomArrowBackIcon({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 30.0,
        height: 30.0,
        margin: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Image.asset("images/icon_3.png"),
      ),
    );
  }
}
