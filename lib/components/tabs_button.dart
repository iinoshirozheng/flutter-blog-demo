import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsButton extends StatefulWidget {
  final title;

  const TabsButton({this.title, super.key});

  @override
  State<TabsButton> createState() => _TabsButtonState();
}

class _TabsButtonState extends State<TabsButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isSelected = true),
      onExit: (_) => setState(() => isSelected = false),
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 100),
        curve: Curves.elasticIn,
        style: SelectTextStyle(isSelected),
        child: Text(widget.title),
      ),
    );
  }

  TextStyle SelectTextStyle(bool selected) => selected
      ? GoogleFonts.oswald(
          shadows: [Shadow(color: Colors.black, offset: Offset(0, -5))],
          color: Colors.transparent,
          fontSize: 25.0,
          decoration: TextDecoration.underline,
          decorationThickness: 2,
          decorationColor: Colors.tealAccent)
      : GoogleFonts.oswald(color: Colors.black, fontSize: 23.0);
}
