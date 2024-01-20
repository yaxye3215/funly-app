import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:funly/src/view/auth/welcome_screen.dart';
import 'package:funly/src/view/home/posts/post_screen.dart';
import 'package:funly/src/view/home/widgets/story_widget.dart';
import 'package:funly/utils/color/color.dart';
import 'package:funly/utils/preferences/preferences.dart';
import 'package:funly/utils/reusable_text.dart';
import 'package:funly/utils/size/size.dart';

import 'package:funly/utils/style/app_style.dart';
import 'package:get/route_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: ReusableText(
            text: "Funly",
            style: appStyle(30, kBlack, FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () async {
                PreferenceUtils.removeString("token");
                Get.offAll(() => const WelcomeScreen());
              },
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const StoryWidget(),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                width: width,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return const PostScreen();
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
