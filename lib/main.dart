import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app_ui/pages/login/login_page.dart';

import 'pages/account_page.dart';
import 'pages/activity_page.dart';
import 'pages/discovery_page.dart';
import 'pages/home/home_page.dart';
import 'pages/notifications_page.dart';

void main() {
  runApp(
    const AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: TravelApp(),
    ),
  );
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/account': (context) => const AccountsPage(),
        '/activity': (context) => const ActivityPage(),
        '/discovery': (context) => const DiscoveryPage(),
        '/notifications': (context) => const NotificationsPage(),
      },
    );
  }
}
