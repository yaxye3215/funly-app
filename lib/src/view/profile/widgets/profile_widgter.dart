import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funly/src/view/profile/widgets/profile_section_widget.dart';
import 'package:funly/utils/color/color.dart';
import 'package:funly/utils/reusable_text.dart';
import 'package:funly/utils/style/app_style.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 110.h,
              width: 110.w,
              decoration: const BoxDecoration(
                color: kOffBlack,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(profileUrl), fit: BoxFit.cover),
              ),
            ),
            ReusableText(
              text: "@yahyeataaee",
              style: appStyle(18, kOffBlack, FontWeight.w300),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProfileSectionWidget(
                    numberOff: "18",
                    title: "Posts",
                  ),
                  ProfileSectionWidget(
                    numberOff: "30k",
                    title: "Followers",
                  ),
                  ProfileSectionWidget(
                    numberOff: "10",
                    title: "Following",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50.h,
                  width: 110.w,
                  decoration: BoxDecoration(
                    color: kGary,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child: ReusableText(
                        text: "Edit profile",
                        style: appStyle(14, kBlack, FontWeight.normal)),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Container(
                  height: 50.h,
                  width: 110.w,
                  decoration: BoxDecoration(
                    color: kGary,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child: ReusableText(
                        text: "Share profile",
                        style: appStyle(14, kBlack, FontWeight.normal)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
