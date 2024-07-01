import 'package:flutter/material.dart';
import 'package:jaxon/features/home_screen/wdigets/custom_drawer.dart';
import 'package:jaxon/features/home_screen/wdigets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: CustomDrawer(),
      body: HomeBody(),
    );
  }
}
