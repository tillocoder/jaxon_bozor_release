import 'package:flutter/material.dart';

class KContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final BoxDecoration decoration;
  const KContainer({
    super.key,
    required this.height,
    required this.width,
    required this.child,
    required this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: DecoratedBox(
        decoration: decoration,
        child: child,
      ),
    );
  }
}
