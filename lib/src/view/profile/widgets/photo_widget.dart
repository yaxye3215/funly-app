import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:funly/utils/color/color.dart';

class PhotoWidget extends StatelessWidget {
  const PhotoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1),
      child: CachedNetworkImage(
        imageUrl: photoUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
