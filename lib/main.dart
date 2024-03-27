import 'package:flutter/material.dart';
import 'package:flutter_blog_demo/mobile/mobile_landing_page.dart';
import 'package:flutter_blog_demo/web/web_landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(
          builder: (context, constrains) => constrains.maxWidth > 800
              ? WebLandingPage()
              : MobileLandingPage()),
    );
  }
}
