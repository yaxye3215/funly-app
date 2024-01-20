import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funly/src/controllers/navbar_controller.dart';
import 'package:funly/utils/color/color.dart';
import 'package:get/get.dart';

class NavbarScreen extends StatelessWidget {
  const NavbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavbarController());
    return Obx(
      () => Scaffold(
        body: controller.page[controller.currentIndex],
        backgroundColor: Colors.amberAccent,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.currentIndex,
          backgroundColor: kBlack,
          onTap: (value) {
            controller.setIndex(value);
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: kBlack,
                icon: Image.asset(
                  "assets/icons/home.png",
                  height: 30.h,
                  width: 30.w,
                  color: controller.currentIndex == 0 ? kOffBlack : kWhite,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/search.png",
                  height: 30.h,
                  width: 30.w,
                  color: controller.currentIndex == 1 ? kOffBlack : kWhite,
                ),
                label: ""),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/plus.png",
                height: 30.h,
                width: 30.w,
                color: controller.currentIndex == 2 ? kOffBlack : kWhite,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/favorite.png",
                height: 30.h,
                width: 30.w,
                color: controller.currentIndex == 3 ? kOffBlack : kWhite,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/person.png",
                  height: 30.h,
                  width: 30.w,
                  color: controller.currentIndex == 4 ? kOffBlack : kWhite,
                ),
                label: ""),
          ],
        ),
      ),
    );
  }
}
