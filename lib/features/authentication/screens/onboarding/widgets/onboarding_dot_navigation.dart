import 'package:e_commerce_app_self/utils/constants/app_constants.dart';
import 'package:e_commerce_app_self/utils/device_utility/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({super.key, required this.pageViewController});

  final PageController pageViewController;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = ADeviceUtility.isDarkMode(context);
    return Positioned(
      bottom: ADeviceUtility.bottomNagivationBar + 25,
      left: ASize.defaultSpace,
      child: SmoothPageIndicator(
        controller: pageViewController,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: isDarkMode ? AColors.light : AColors.dark,
          dotHeight: 6,
        ),
        onDotClicked: (index) {
          // pageViewController.page == index;
        },
      ),
    );
  }
}
