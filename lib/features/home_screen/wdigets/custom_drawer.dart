import 'package:flutter/material.dart';
import 'package:jaxon/core/global_widgets/list_tile_widget.dart';
import 'package:jaxon/features/home_screen/view/qarzdorlar.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade100,
      child: Column(
        children: [
          const DrawerHeader(
            child: DrawerHeaderContent(),
          ),
          CustomListTile(
            title: "Foydalanuvchilar",
            onTap: () {},
            icon: const Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          CustomListTile(
            title: "Nazoratchilar",
            onTap: () {},
            icon: const Icon(
              Icons.supervised_user_circle,
              color: Colors.white,
            ),
          ),
          CustomListTile(
            title: "Do'konlar",
            onTap: () {},
            icon: const Icon(
              Icons.store,
              color: Colors.white,
            ),
          ),
          CustomListTile(
            title: "Do'kon turlari",
            onTap: () {},
            icon: const Icon(
              Icons.storage_outlined,
              color: Colors.white,
            ),
          ),
          CustomListTile(
            title: "To'lov turlari",
            onTap: () {},
            icon: const Icon(
              Icons.payments_outlined,
              color: Colors.white,
            ),
          ),
          CustomListTile(
            title: "Do'kon egalari",
            onTap: () {},
            icon: const Icon(
              Icons.stream_outlined,
              color: Colors.white,
            ),
          ),
          CustomListTile(
            title: "To'lovlar",
            onTap: () {},
            icon: const Icon(
              Icons.payment_outlined,
              color: Colors.white,
            ),
          ),
          CustomListTile(
            title: "Qarzdorlar",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Qarzdorlar(),
                ),
              );
            },
            icon: const Icon(
              Icons.summarize,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerHeaderContent extends StatelessWidget {
  const DrawerHeaderContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Admin",
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text("Abdumalikov Muhammadmirzo"),
      ],
    );
  }
}
