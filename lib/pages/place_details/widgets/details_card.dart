import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/models/place.dart';
import 'call_button.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({super.key, required this.place});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 310,
      left: 45,
      child: Container(
        width: 327,
        height: 180,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x26000000),
              blurRadius: 14,
              offset: Offset(2, 4),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        place.name,
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          height: 1.56,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        place.location,
                        style: GoogleFonts.inter(
                          color: const Color(0xFFBDBDBD),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.43,
                        ),
                      ),
                    ],
                  ),
                  const CallButton(),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "\$${place.price}",
                    style: GoogleFonts.inter(
                      color: const Color(0xFF153C9F),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      height: 2.0,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "/ A night",
                    style: GoogleFonts.inter(
                      color: const Color(0xFFBDBDBD),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 1.67,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.star,
                    color: Color(0xFFffb803),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    place.rating,
                    style: GoogleFonts.inter(
                      color: const Color(0xFF1C1E1F),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                  ),
                  const SizedBox(width: 24),
                  Text(
                    "2w people left footprints",
                    style: GoogleFonts.inter(
                      color: const Color(0xFFACB3BD),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1.43,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
