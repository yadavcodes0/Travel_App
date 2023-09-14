import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Anna",
              style: GoogleFonts.inter(
                color: const Color(0xFF2E3E5C),
                fontSize: 22,
                fontWeight: FontWeight.w700,
                height: 1.45,
                letterSpacing: 0.50,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Let's explore the world!",
              style: GoogleFonts.inter(
                color: const Color(0xFF2E3E5C),
                fontSize: 16,
                fontWeight: FontWeight.w400,
                height: 1.50,
                letterSpacing: 0.50,
              ),
            ),
          ],
        ),
        Container(
          width: 44,
          height: 44,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: OvalBorder(),
            shadows: [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 14,
                offset: Offset(2, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: SvgPicture.asset(
            "assets/icons/search.svg",
            fit: BoxFit.none,
          ),
        ),
      ],
    );
  }
}
