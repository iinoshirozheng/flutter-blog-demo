import 'package:flutter/material.dart';
import 'package:flutter_blog_demo/components/tabs_button.dart';

class WebLandingPage extends StatefulWidget {
  const WebLandingPage({super.key});

  @override
  State<WebLandingPage> createState() => _WebLandingPageState();
}

class _WebLandingPageState extends State<WebLandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            Spacer(flex: 1),
            TabsButton(title: "Home"),
            Spacer(flex: 2),
            TabsButton(title: "Works"),
            Spacer(flex: 2),
            TabsButton(title: "Blog"),
            Spacer(flex: 2),
            TabsButton(title: "About"),
            Spacer(flex: 2),
            TabsButton(title: "Contact"),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
