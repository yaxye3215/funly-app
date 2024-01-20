import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funly/common/bacground_container.dart';
import 'package:funly/utils/color/color.dart';
import 'package:funly/utils/reusable_text.dart';
import 'package:funly/utils/size/size.dart';
import 'package:funly/utils/style/app_style.dart';
import 'package:funly/src/view/auth/sing_in_screen.dart';
import 'package:funly/src/view/auth/sing_up_screen.dart';
import 'package:funly/src/view/auth/widgets/elevate_buttom_widget.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainerBackground(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableText(
                    text: "WELCOME BACK",
                    style: appStyle(30, kWhite, FontWeight.bold)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        maximumSize: Size(width, 60.h),
                        minimumSize: Size(width, 60.h),
                        side: const BorderSide(color: kPrimary, width: 2),
                        foregroundColor: kPrimary,
                        elevation: 0,
                      ),
                      onPressed: () {
                        Get.to(() => const SingUpScreen(),
                            transition: Transition.fadeIn,
                            duration: const Duration(microseconds: 9000));
                      },
                      child: ReusableText(
                          text: "SING UP",
                          style: appStyle(20, kPrimary, FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    ElevateButtomWidget(
                      onPressed: () {
                        
                        Get.to(() => const SingInScreen(),
                            transition: Transition.fadeIn,
                            duration: const Duration(microseconds: 9000));
                      },
                      text: 'SING IN',
                    ),
                  ],
                ),
                const SizedBox()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
