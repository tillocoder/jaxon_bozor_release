import 'package:flutter/material.dart';
import 'package:jaxon/core/global_widgets/list_tile_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey.shade100,
        child: Column(
          children: [
            const DrawerHeader(
              child: Column(
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
              ),
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
          ],
        ),
      ),
      body: const CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'Umumiy',
              style: TextStyle(color: Colors.white),
            ),
            floating: true,
            expandedHeight: 100.0,
            backgroundColor: Colors.deepPurple,
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      "Umumiy",
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
