import 'package:e_commerce_app_self/utils/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // horizontal scrollable page
          PageView(
            children: [
              Column(
                children: [
                  // image
                  LottieBuilder.asset(ALottie.onboarding1),
                  // text
                  Text(ATextString.onBoardingHeadingText1, style: TextStyle()),
                  // subtext
                  Text(ATextString.onBoardingText1),
                ],
              ),
            ],
          ),
          // skip button
          // dot navigation smoothPageIdicator
          // circularButton
        ],
      ),
    );
  }
}
