import 'package:flutter/material.dart';
import 'package:funly/src/view/profile/posts_screen.dart';
import 'package:funly/src/view/profile/widgets/photo_widget.dart';
import 'package:get/get.dart';

class ListPhotosWidget extends StatelessWidget {
  const ListPhotosWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
      ),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Get.to(() => const PostDetailScreen());
          },
          child: const PhotoWidget(),
        );
      },
    );
  }
}
