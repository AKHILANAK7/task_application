import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task_application/screens/home_screen.dart';
import 'package:task_application/screens/post_screen.dart';
import 'package:uni_links/uni_links.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late StreamSubscription _sub;

  @override
  void initState() {
    super.initState();
    _initDeepLinkListener();
  }

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }

  // Listen for deep link
  void _initDeepLinkListener() {
    _sub = uriLinkStream.listen((Uri? uri) {
      if (uri != null && uri.scheme == 'myapp') {
        String postId = uri.pathSegments[1]; // e.g., 'image1'
        Navigator.pushNamed(context, '/post/$postId');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Deep Link Example',
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(builder: (context) => MyHomePage());
        } else if (settings.name!.startsWith('/post/')) {
          final postId = settings.name!.split('/post/')[1];
          return MaterialPageRoute(builder: (context) => PostPage(postId: postId));
        }
        return null;
      },
    );
  }
}
