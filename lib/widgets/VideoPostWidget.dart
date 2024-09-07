import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class VideoPostWidget extends StatelessWidget {
  void sharePost(BuildContext context) {
    final String deepLink = 'myapp://post/video1';
    Share.share('Check out this video post: $deepLink');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('This is a video post'),
        ElevatedButton(
          onPressed: () => sharePost(context),
          child: Text('Share Video Post'),
        ),
      ],
    );
  }
}
