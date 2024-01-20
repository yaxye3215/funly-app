import 'package:flutter/material.dart';
import 'package:funly/utils/size/size.dart';

class ContainerBackground extends StatelessWidget {
  const ContainerBackground({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: hieght,
      width: width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
