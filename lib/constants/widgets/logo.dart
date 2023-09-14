import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, required this.logoColor, required this.textColor});

  final Color logoColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/logo.png",
          color: logoColor,
        ),
        const SizedBox(width: 4),
        Text(
          "GlobeGlider",
          style: GoogleFonts.inter(
            color: textColor,
            fontSize: 16.42,
            fontWeight: FontWeight.w400,
            height: 1.50,
          ),
        ),
      ],
    );
  }
}
