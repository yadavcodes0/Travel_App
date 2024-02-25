import 'dart:math';

import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final VoidCallback onTap;
  final Color borderColor;

  const CustomButton({
    Key? key,
    required this.onTap,
    required this.borderColor,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  double _progress = 0;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _animationController.addListener(() {
      setState(() {
        _progress = _animationController.value;
      });
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _animateBorder() {
    if (_progress < 1) {
      _animationController.forward(from: 0);
    } else {
      widget.onTap();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Draw the border using CustomPaint
        CustomPaint(
          painter: _BorderPainter(
            borderColor: widget.borderColor,
            progress: _progress,
          ),
          size: const Size.fromRadius(50),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: GestureDetector(
            onTap: _animateBorder,
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

class _BorderPainter extends CustomPainter {
  final Color borderColor;
  final double progress;

  _BorderPainter({
    required this.borderColor,
    required this.progress,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = borderColor
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    // Draw the blue part of the border
    final blueArcRect = Rect.fromCenter(
      center: Offset(size.width / 2, size.height / 2),
      width: size.width,
      height: size.height,
    );
    canvas.drawArc(blueArcRect, 0, 2 * pi * progress, false, paint);

    // Draw the gray part of the border
    final grayArcRect = Rect.fromCenter(
      center: Offset(size.width / 2, size.height / 2),
      width: size.width,
      height: size.height,
    );
    canvas.drawArc(
        grayArcRect, 2 * pi * progress, 2 * pi * (1 - progress), false, paint);
  }

  @override
  bool shouldRepaint(_BorderPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}
