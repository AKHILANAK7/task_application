import 'package:flutter/material.dart';

import '../widgets/ImagePostWidget.dart';
import '../widgets/TextPostWidget.dart';
import '../widgets/VideoPostWidget.dart';

class PostPage extends StatelessWidget {
  final String postId;
  PostPage({required this.postId});

  @override
  Widget build(BuildContext context) {
    Widget postContent;

    if (postId == 'text1') {
      postContent = TextPostWidget();
    } else if (postId == 'video1') {
      postContent = VideoPostWidget();
    } else if (postId == 'image1') {
      postContent = ImagePostWidget();
    } else {
      postContent = Text('Unknown Post');
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Post: $postId'),
      ),
      body: Center(
        child: postContent,
      ),
    );
  }
}
