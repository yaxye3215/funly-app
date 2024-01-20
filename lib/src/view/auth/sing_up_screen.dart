import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funly/common/bacground_container.dart';
import 'package:funly/src/controllers/auth/auth_controller.dart';
import 'package:funly/src/view/auth/sing_in_screen.dart';
import 'package:funly/utils/color/color.dart';
import 'package:funly/src/view/auth/widgets/elevate_buttom_widget.dart';
import 'package:funly/src/view/auth/widgets/textfield_widget.dart';
import 'package:get/get.dart';

import '../../../utils/reusable_text.dart';
import '../../../utils/style/app_style.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthController());
    return ContainerBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: kWhite,
        ),
        body: Obx(
          () => Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ReusableText(
                  text: "Sing Up",
                  style: appStyle(40, kWhite, FontWeight.bold),
                ),
                Column(
                  children: [
                    TextFieldWidget(
                      controller: controller.usernameController.value,
                      hintText: "username",
                      obscureText: false,
                      pIcon: const Icon(
                        Icons.person,
                        color: kPrimary,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFieldWidget(
                      controller: controller.emailController.value,
                      hintText: "email",
                      pIcon: const Icon(
                        Icons.email,
                        color: kPrimary,
                      ),
                      obscureText: false,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFieldWidget(
                      controller: controller.passwordController.value,
                      hintText: "password",
                      obscureText: true,
                      pIcon: const Icon(
                        Icons.lock,
                        color: kPrimary,
                      ),
                      sIcon: const Icon(
                        Icons.visibility_off,
                        color: kPrimary,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    ElevateButtomWidget(
                        text: controller.isloading.value ? "......" : "Sing Up",
                        onPressed: () {
                          controller.registerUser();
                        })
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const SingInScreen());
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 50.h),
                      child: SizedBox(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: " Sing In",
                                style: appStyle(20, kPrimary, FontWeight.bold),
                              ),
                            ],
                            text: "Already a have account?",
                            style: appStyle(15, kBlack, FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
