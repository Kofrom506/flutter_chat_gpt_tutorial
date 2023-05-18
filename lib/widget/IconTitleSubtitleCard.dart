import 'package:flutter/material.dart';

class IconTitleSubtitleCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const IconTitleSubtitleCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subtitle),
      ),
    );
  }
}