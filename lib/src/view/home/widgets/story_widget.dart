import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/color/color.dart';
import '../../../../utils/size/size.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 70.h,
          width: width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(2),
                      height: 100.h,
                      width: 70.w,
                      decoration: const BoxDecoration(
                          color: kBlack,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(profileUrl),
                              fit: BoxFit.cover)),
                    ),
                    const Positioned(
                      bottom: 0,
                      left: 15,
                      child: CircleAvatar(
                          radius: 15,
                          backgroundColor: kBlack,
                          child: Icon(
                            Icons.add_a_photo_outlined,
                            color: kWhite,
                          )),
                    )
                  ],
                );
              } else {
                return Container(
                  margin: EdgeInsets.only(left: 2.w),
                  height: 120.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: kPrimary, width: 3),
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(2),
                    height: 100.h,
                    width: 70.w,
                    decoration: const BoxDecoration(
                      color: kBlack,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(photoUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              }
            },
          ),
        )
      ],
    );
  }
}
