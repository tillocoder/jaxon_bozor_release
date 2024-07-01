import 'package:flutter/material.dart';

class InactiveUsersList extends StatelessWidget {
  const InactiveUsersList({super.key});

  @override
  Widget build(BuildContext context) {
    int itemCount = 4;

    double containerHeight = itemCount * 62.0 + 30.0;

    return Container(
      width: double.infinity,
      height: containerHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Foydalanuvchilarning oxirgi tashfiri",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
          const Divider(),
          ...List.generate(
            itemCount,
            (index) => const ListTile(
              minVerticalPadding: BorderSide.strokeAlignOutside,
              title: Text(
                "Ism Familiya",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: Text(
                "Kirmagan",
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
