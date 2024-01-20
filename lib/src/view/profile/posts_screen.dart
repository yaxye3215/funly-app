import 'package:flutter/material.dart';
import 'package:funly/utils/color/color.dart';
import 'package:funly/utils/reusable_text.dart';
import 'package:funly/utils/style/app_style.dart';

class PostDetailScreen extends StatelessWidget {
  const PostDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(profileUrl),
            ),
            title: ReusableText(
                text: "Yahye_ataa",
                style: appStyle(20, kBlack, FontWeight.bold)),
            trailing: const Icon(Icons.more_horiz_outlined),
          ),
          Image.network(photoUrl),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
        ],
      ),
    );
  }
}

class CommentWidget extends StatelessWidget {
  final String username;
  final String comment;

  const CommentWidget({
    Key? key,
    required this.username,
    required this.comment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(username),
      subtitle: Text(comment),
    );
  }
}
