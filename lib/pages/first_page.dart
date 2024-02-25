import 'package:flutter/material.dart';
import 'package:travel_app_ui/pages/home/widgets/my_bottom_navigation_bar.dart';

import 'account_page.dart';
import 'activity_page.dart';
import 'discovery_page.dart';
import 'home/home_page.dart';
import 'notifications_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final PageController _pageController = PageController(initialPage: 2);
  int _currentPageIndex = 2;

  final List<Widget> _pages = [
    const NotificationsPage(),
    const AccountsPage(),
    const HomePage(),
    const ActivityPage(),
    const DiscoveryPage(),
  ];
  void _onTabTapped(int index) {
    setState(() {
      _currentPageIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(
        selectedIndex: _currentPageIndex,
        onTabTapped: _onTabTapped,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int pageIndex) {
                setState(() {
                  _currentPageIndex = pageIndex;
                });
              },
              children: _pages,
            ),
          ),
        ],
      ),
    );
  }
}
