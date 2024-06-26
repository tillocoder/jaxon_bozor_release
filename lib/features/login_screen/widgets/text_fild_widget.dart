import 'package:flutter/material.dart';

class TextFildWidget extends StatelessWidget {
  final String hintText;
  final Icon icon;
  final bool obscureText;
  const TextFildWidget({
    super.key,
    required this.hintText,
    required this.icon,
    required TextEditingController controller,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 1,
            color: Color.fromARGB(137, 104, 58, 183),
          )
        ],
      ),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIcon: icon,
          hintText: hintText,
          enabled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
