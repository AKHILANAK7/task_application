import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/post/text1'),
              child: Text('Go to Text Post'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/post/video1'),
              child: Text('Go to Video Post'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/post/image1'),
              child: Text('Go to Image Post'),
            ),
          ],
        ),
      ),
    );
  }
}
