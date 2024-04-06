import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RoundedListTile extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onPressed;

  const RoundedListTile({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: const Color(0xffF8F8F8),
          borderRadius: BorderRadius.circular(12.0),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.withOpacity(0.5),
          //     spreadRadius: 2,
          //     blurRadius: 5,
          //     offset: Offset(0, 3), // changes position of shadow
          //   ),
          // ],
        ),
        child: ListTile(
          leading: SvgPicture.asset(imagePath),
          title: Text(title),
          trailing: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
