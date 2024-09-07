import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'screens/home_screen.dart';
import 'screens/post_screen.dart';

void main() {
  // For Web: Clean URL strategy without hash.
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Deep Linking',
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
