import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 20,
      minLeadingWidth: 20,
      horizontalTitleGap: 10,
      leading: Icon(
        icon,
        color: Colors.grey[800],
        size: 30,
      ),
      title: Text(
        text,
        style: TextStyle(color: Colors.grey[800], fontSize: 18),
      ),
    );
  }
}
