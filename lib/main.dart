import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:device_preview/device_preview.dart';
import 'package:travel_app_ui/pages/login/login_page.dart';

import 'pages/account_page.dart';
import 'pages/activity_page.dart';
import 'pages/discovery_page.dart';
import 'pages/home/home_page.dart';
import 'pages/notifications_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: kIsWeb,
      defaultDevice: DeviceInfo.genericPhone(
        platform: TargetPlatform.iOS,
        id: "iphone-16-pro-max",
        name: "iPhone 16 Pro Max",
        screenSize: const Size(430, 932),
        safeAreas: const EdgeInsets.only(top: 59, bottom: 34),
        rotatedSafeAreas: const EdgeInsets.only(left: 59, right: 34),
        pixelRatio: 3.0,
      ),
      builder: (context) => const AnnotatedRegion(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        child: TravelApp(),
      ),
    ),
  );
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
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
