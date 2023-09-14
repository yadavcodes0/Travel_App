import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabTapped;

  const MyBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onTabTapped,
  });

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const ShapeDecoration(
        color: Color(0xFFFAFCFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 14,
            offset: Offset(2, -4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildIcon(0, "assets/icons/bell.svg"),
            _buildIcon(1, "assets/icons/user.svg"),
            _buildIcon(2, "assets/icons/home.svg"),
            _buildIcon(3, "assets/icons/activity.svg"),
            _buildIcon(4, "assets/icons/discovery.svg"),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(int index, String iconPath) {
    return GestureDetector(
      onTap: () => widget.onTabTapped(index),
      child: Column(
        children: [
          SvgPicture.asset(
            iconPath,
            color:
                widget.selectedIndex == index ? const Color(0xff163C9F) : null,
          ),
          const SizedBox(height: 6),
          if (widget.selectedIndex == index)
            SvgPicture.asset("assets/icons/dot.svg"),
        ],
      ),
    );
  }
}
