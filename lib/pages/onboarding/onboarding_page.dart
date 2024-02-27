// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:travel_app_ui/pages/first_page.dart';
import 'package:travel_app_ui/pages/onboarding/widgets/goto_next_screen_button.dart';
import 'package:travel_app_ui/pages/onboarding/widgets/onboarding_page_widget.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPageIndex = 0;

  final List<Widget> _onboardingScreens = [
    // Screen 1
    const OnBoardingPageWidget(
      imageUrl: "assets/images/image1.jpeg",
      title: "Welcome to GlobeGlider",
      description:
          "Discover the World with GlobeGlider. Your passport to unforgettable adventures!",
    ),

    // Screen 2
    const OnBoardingPageWidget(
      imageUrl: "assets/images/image2.jpeg",
      title: " Explore Exciting Features",
      description:
          "Plan trips, find the best deals, and create memorable itineraries with ease.",
    ),

    // Screen 3
    const OnBoardingPageWidget(
      imageUrl: "assets/images/image3.jpeg",
      title: " Tailored Just for You",
      description:
          "Our app customizes travel suggestions based on your interests and preferences.",
    ),
  ];

  void goToNextScreen() {
    if (_currentPageIndex < _onboardingScreens.length - 1) {
      _pageController.animateToPage(
        _currentPageIndex + 1,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    } else {
      // If on the last onboarding screen, navigate to the home page
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const FirstPage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int pageIndex) {
                setState(() {
                  _currentPageIndex = pageIndex;
                });
              },
              children: _onboardingScreens,
            ),
          ),
          Positioned(
            left: size.width / 2.5,
            bottom: size.height * 0.1 - 20,
            child: CustomButton(
              value: _currentPageIndex / (_onboardingScreens.length - 1),
              onTap: goToNextScreen,
              borderColor: const Color(0xff163C9F),
            ),
          ),
        ],
      ),
    );
  }
}
