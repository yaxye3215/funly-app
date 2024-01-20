import 'package:flutter/material.dart';
import 'package:funly/src/view/home/home_screen.dart';
import 'package:get/get.dart';
import 'package:funly/src/service/auth/auth_service.dart';

import '../../../utils/color/color.dart';
import '../../../utils/style/app_style.dart';

class AuthController extends GetxController {
  // Use Rx classes for observable variables
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;
  Rx<TextEditingController> usernameController = TextEditingController().obs;
  RxBool isloading = false.obs;

  String get email => emailController.value.text;
  String get password => passwordController.value.text;
  String get username => usernameController.value.text;

  void registerUser() async {
    if (email.isEmpty || password.isEmpty || username.isEmpty) {
      Get.snackbar(
        "Error",
        "",
        snackPosition: SnackPosition.BOTTOM,
        titleText: Text(
          "Error",
          style: appStyle(20, kRed, FontWeight.bold),
        ),
        messageText: Text(
          "please fill's complete",
          style: appStyle(15, kBlack, FontWeight.w400),
        ),
      );
    }
    // Access text values using the getters
    isloading.value = true;
    await AuthService().registerUser(
      email: email,
      password: password,
      username: username,
    );
    isloading.value = false;
    Get.offAll(() => const HomeScreen());
  }

  void loginUser() async {
    if (email.isEmpty || password.isEmpty) {
      Get.snackbar(
        "Error",
        "",
        snackPosition: SnackPosition.BOTTOM,
        titleText: Text(
          "Error",
          style: appStyle(20, kRed, FontWeight.bold),
        ),
        messageText: Text(
          "please fill's complete",
          style: appStyle(15, kBlack, FontWeight.w400),
        ),
      );
    }
    // Access text values using the getters
    isloading.value = true;
    await AuthService().loginUser(
      email: email,
      password: password,
    );
    isloading.value = false;
    Get.offAll(() => const HomeScreen());
  }

  // Dispose of the controllers when the controller is closed
  @override
  void dispose() {
    emailController.value.dispose();
    passwordController.value.dispose();
    usernameController.value.dispose();
    super.dispose();
  }
}
