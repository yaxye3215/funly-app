import 'package:flutter/material.dart';

class DescreptionText extends StatelessWidget {
  const DescreptionText({super.key, required this.text, required this.style});
  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.clip,
      softWrap: false,
      textAlign: TextAlign.left,
      style: style,
    );
  }
}
