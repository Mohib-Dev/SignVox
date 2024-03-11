import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ListItem({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffF8F8F8),
      ),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              imageUrl,
              width: 150.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtitle.toString(),
                  style: const TextStyle(fontSize: 14.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
