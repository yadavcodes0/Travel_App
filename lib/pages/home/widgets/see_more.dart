import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SeeMoreRow extends StatelessWidget {
  const SeeMoreRow({super.key, required this.tittle});

  final String tittle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          tittle,
          style: GoogleFonts.inter(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            height: 1.56,
          ),
        ),
        const Spacer(),
        Text(
          "See more",
          textAlign: TextAlign.right,
          style: GoogleFonts.inter(
            color: const Color(0xFF153C9F),
            fontSize: 12,
            fontWeight: FontWeight.w500,
            height: 1.67,
          ),
        ),
        const SizedBox(width: 4),
        SvgPicture.asset("assets/icons/arrow.svg"),
      ],
    );
  }
}
