import 'package:flutter/material.dart';

import '../../../../utils/color/color.dart';
import '../../../../utils/reusable_text.dart';
import '../../../../utils/style/app_style.dart';

class ProfileSectionWidget extends StatelessWidget {
  const ProfileSectionWidget({
    super.key,
    required this.numberOff,
    required this.title,
  });
  final String numberOff;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ReusableText(
          text: numberOff,
          style: appStyle(20, kBlack, FontWeight.bold),
        ),
        ReusableText(
          text: title,
          style: appStyle(12, kOffBlack, FontWeight.w300),
        ),
      ],
    );
  }
}
