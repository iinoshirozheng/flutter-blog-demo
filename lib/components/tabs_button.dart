import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsButton extends StatefulWidget {
  final title;

  const TabsButton({this.title, super.key});

  @override
  State<TabsButton> createState() => _TabsButtonState();
}

class _TabsButtonState extends State<TabsButton> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      style: GoogleFonts.oswald(color: Colors.black, fontSize: 23.0),
    );
  }
}
