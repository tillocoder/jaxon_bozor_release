import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Widget icon;

  const CustomListTile({
    required this.title,
    required this.onTap,
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.deepPurple,
      color: Colors.deepPurpleAccent,
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      child: ListTile(
        leading: icon,
        onTap: onTap,
        title: Text(title),
        textColor: Colors.white,
      ),
    );
  }
}
