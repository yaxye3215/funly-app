import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funly/src/view/profile/widgets/list_photo_widget.dart';
import 'package:funly/src/view/profile/widgets/profile_widgter.dart';
import 'package:funly/utils/color/color.dart';
import 'package:funly/utils/reusable_text.dart';
import 'package:funly/utils/size/size.dart';
import 'package:funly/utils/style/app_style.dart';
import 'package:get/get.dart';

import '../../controllers/profile/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: ReusableText(
          text: "Yahye Ataa",
          style: appStyle(22, kBlack, FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_outlined,
                size: 30,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileWidget(),
            SizedBox(
              height: 20.h,
            ),
            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    controller: controller.tabController,
                    indicatorColor: kBlack,
                    unselectedLabelColor: kBlack,
                    labelColor: kPrimary,
                    tabs: const [
                      Tab(
                        icon: Icon(Icons.photo),
                      ),
                      Tab(
                        icon: Icon(Icons.video_collection_sharp),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: hieght,
              child: TabBarView(
                controller: controller.tabController,
                children: [
                  const ListPhotosWidget(),
                  ReusableText(
                      text: "video",
                      style: appStyle(22, kBlack, FontWeight.bold)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
