import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavbarButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor;

  NavbarButton({
    required this.text,
    required this.onPressed,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Color(0xFF0b1120), onPrimary: Colors.white, elevation: 30),
        onPressed: onPressed,
        child: Container(
          child: Text(
            text,
            style: GoogleFonts.inter(
              fontSize: 16.5,
              height: 1.5,
              fontWeight: FontWeight.w300,
            ),
          ),
        ));
  }
}
