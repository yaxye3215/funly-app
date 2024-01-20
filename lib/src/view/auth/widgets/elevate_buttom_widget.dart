import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/color/color.dart';
import '../../../../utils/reusable_text.dart';
import '../../../../utils/size/size.dart';
import '../../../../utils/style/app_style.dart';

class ElevateButtomWidget extends StatelessWidget {
  const ElevateButtomWidget({
    super.key,
    required this.text,
    this.onPressed,
  });
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimary,
        maximumSize: Size(width, 60.h),
        minimumSize: Size(width, 60.h),
      ),
      onPressed: onPressed,
      child: ReusableText(
        text: text,
        style: appStyle(20, kWhite, FontWeight.bold),
      ),
    );
  }
}
