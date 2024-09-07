import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ImagePostWidget extends StatelessWidget {
  void sharePost(BuildContext context) {
    final String deepLink = 'myapp://post/image1';
    Share.share('Check out this image post: $deepLink');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.network('https://via.placeholder.com/150'),
        ElevatedButton(
          onPressed: () => sharePost(context),
          child: Text('Share Image Post'),
        ),
      ],
    );
  }
}
