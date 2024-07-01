import 'package:flutter/material.dart';

class Qarzdorlar extends StatelessWidget {
  const Qarzdorlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Qarzdorlar"),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) => const ListTile(
          leading: CircleAvatar(),
          title: Text("17-11/179"),
          trailing: Text("923298"),
        ),
        itemCount: 10,
      ),
    );
  }
}
