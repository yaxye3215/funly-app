import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funly/utils/descrition_text.dart';
import 'package:funly/utils/size/size.dart';

import '../../../../utils/color/color.dart';
import '../../../../utils/reusable_text.dart';
import '../../../../utils/style/app_style.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(profileUrl),
            ),
            horizontalTitleGap: 8.w,
            title: ReusableText(
              text: "Yahye_ataa",
              style: appStyle(15, kBlack, FontWeight.bold),
            ),
            trailing: const Icon(Icons.more_horiz_outlined),
          ),
          Image.network(
            photoUrl,
            fit: BoxFit.cover,
            height: 320,
            width: width,
          ),
          const Divider(),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Wrap(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.message,
                    color: kBlack,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.share,
                    color: kBlack,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: DescreptionText(
              text:
                  "hsjhjsjhdjh hsjhjsjhdjh hsjhjsjhdjh hsjhjsjhdjh hsjhjsjhdjh hsjhjsjhdjh hsjhjsjhdjh",
              style: appStyle(18, kGary, FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
