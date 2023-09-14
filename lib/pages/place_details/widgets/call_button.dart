import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CallButton extends StatelessWidget {
  const CallButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: const ShapeDecoration(
        color: Color(0xFF153C9F),
        shape: OvalBorder(),
      ),
      child: SvgPicture.asset(
        "assets/icons/call.svg",
        fit: BoxFit.none,
      ),
    );
  }
}
