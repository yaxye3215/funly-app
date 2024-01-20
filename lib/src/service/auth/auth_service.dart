import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:funly/src/models/auth/auth_model.dart';
import 'package:funly/utils/color/color.dart';
import 'package:funly/utils/preferences/preferences.dart';
import 'package:funly/utils/style/app_style.dart';
import 'package:get/route_manager.dart';
import 'package:http/http.dart' as http;

class AuthService {
  final String url = "https://funly.onrender.com";

  Future<void> registerUser({
    required String email,
    required String password,
    required String username,
  }) async {
    try {
      var response = await http.post(
        Uri.parse("$url/api/register"),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "username": username,
          "email": email,
          "password": password,
        }),
      );
      if (response.statusCode == 201) {
        final user = authFromJson(response.body);
        await PreferenceUtils.setString("token", user.token);
      } else {
        Get.snackbar(
          "Error",
          jsonDecode(response.body)["message"],
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Error",
            style: appStyle(20, kRed, FontWeight.bold),
          ),
          messageText: Text(
            jsonDecode(response.body)["message"],
            style: appStyle(15, kBlack, FontWeight.w400),
          ),
        );
      }
    } catch (e) {
      Get.snackbar(
          "Error", "An error occurred while registering. Please try again.");
    }
  }

  Future<void> loginUser({
    required String email,
    required String password,
  }) async {
    try {
      var response = await http.post(
        Uri.parse("$url/api/login"),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "email": email,
          "password": password,
        }),
      );
      if (response.statusCode == 200) {
        final user = authFromJson(response.body);
        PreferenceUtils.setString("token", user.token);
      } else {
        Get.snackbar(
          "Error",
          jsonDecode(response.body)["message"],
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Error",
            style: appStyle(20, kRed, FontWeight.bold),
          ),
          messageText: Text(
            jsonDecode(response.body)["message"],
            style: appStyle(15, kBlack, FontWeight.w400),
          ),
        );
      }
    } catch (e) {
      Get.snackbar(
          "Error", "An error occurred while registering. Please try again.");
    }
  }
}
