import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class TextPostWidget extends StatelessWidget {
  void sharePost(BuildContext context) {
    final String deepLink = 'myapp://post/text1';
    Share.share('Check out this text post: $deepLink');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('This is a text post'),
        ElevatedButton(
          onPressed: () => sharePost(context),
          child: Text('Share Text Post'),
        ),
      ],
    );
  }
}
