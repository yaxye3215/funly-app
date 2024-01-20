import 'package:flutter/material.dart';
import 'package:funly/utils/color/color.dart';
import 'package:funly/utils/style/app_style.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key,
      required this.hintText,
      required this.obscureText,
      this.controller,
      this.sIcon,
      required this.pIcon});
  final String hintText;
  final Widget? sIcon;
  final Widget pIcon;
  final bool obscureText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      style: appStyle(15, kPrimary, FontWeight.w400),
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 2.0, color: kWhite, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(50.0)),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kPrimary, width: 2.0),
          borderRadius: BorderRadius.circular(50.0),
        ),
        hintText: hintText,
        hintStyle: appStyle(15, kWhite, FontWeight.w400),
        prefixIcon: pIcon,
        suffixIcon: sIcon,
      ),
    );
  }
}
