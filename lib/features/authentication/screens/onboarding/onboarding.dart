import 'package:e_commerce_app_self/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_commerce_app_self/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:e_commerce_app_self/features/authentication/screens/onboarding/widgets/onboarding_widget.dart';
import 'package:e_commerce_app_self/features/authentication/screens/onboarding/widgets/onboarding_skip_widget.dart';
import 'package:e_commerce_app_self/utils/constants/app_constants.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pageViewController = PageController();
    final device = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // horizontal scrollable page
          PageView(
            controller: pageViewController,
            children: [
              OnBoardingWidget(
                device: device,
                onBoardingHeadingText: ATextString.onBoardingHeadingText1,
                onBoardingText: ATextString.onBoardingText1,
                lottieOnboardingString: ALottie.onboarding1,
              ),
              OnBoardingWidget(
                device: device,
                onBoardingHeadingText: ATextString.onBoardingHeadingText2,
                onBoardingText: ATextString.onBoardingText2,
                lottieOnboardingString: ALottie.onboarding2,
              ),
              OnBoardingWidget(
                device: device,
                onBoardingHeadingText: ATextString.onBoardingHeadingText3,
                onBoardingText: ATextString.onBoardingText3,
                lottieOnboardingString: ALottie.onboarding3,
              ),
            ],
          ),

          // skip button
          const OnBoardingSkipWidget(),

          // dot navigation smoothPageIdicator
          // TODO: manage this with riverpod
          OnboardingDotNavigation(),

          // circularButton
          OnboardingNextButton(),
        ],
      ),
    );
  }
}

