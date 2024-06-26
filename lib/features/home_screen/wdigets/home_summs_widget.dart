import 'package:flutter/material.dart';

class SummsWidget extends StatelessWidget {
  const SummsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 60,
            child: Card(
              elevation: 10,
              color: Colors.green,
              child: Column(
                children: [
                  Text(
                    "Bugunggi summa",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "324 000 000 sum",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 60,
            child: Card(
              elevation: 10,
              color: Colors.redAccent,
              child: Column(
                children: [
                  Text(
                    "Qarzlar",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "324 000 000 sum",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
