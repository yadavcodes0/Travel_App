import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final VoidCallback onTap;
  final Color borderColor;
  final double value;

  const CustomButton({
    Key? key,
    required this.onTap,
    required this.borderColor,
    required this.value,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Draw the border using CustomPaint
        SizedBox(
          height: 100,
          width: 100,
          child: CircularProgressIndicator(
            value: widget.value,
            strokeWidth: 2,
            backgroundColor: const Color.fromARGB(100, 255, 255, 255),
            valueColor: AlwaysStoppedAnimation<Color>(widget.borderColor),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: GestureDetector(
            onTap: () {
              widget.onTap();
            },
            behavior: HitTestBehavior.opaque,
            child: Center(
              child: Container(
                height: 85,
                width: 85,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff163C9F),
                ),
                child: const Icon(
                  Icons.arrow_forward,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
