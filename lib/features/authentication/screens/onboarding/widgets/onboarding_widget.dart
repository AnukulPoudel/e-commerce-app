
import 'package:e_commerce_app_self/utils/constants/app_constants/size.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
    super.key,
    required this.device,
    required this.onBoardingHeadingText,
    required this.onBoardingText,
    required this.lottieOnboardingString,
  });

  final Size device;
  final String onBoardingHeadingText;
  final String onBoardingText;
  final String lottieOnboardingString;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(ASize.defaultSpace),
      child: Column(
        children: [
          // image
          LottieBuilder.asset(
            renderCache: RenderCache.raster,
            lottieOnboardingString,
            // inefficient and redundant call on mediaquety not good
            // width: ADeviceUtility.getDeviceWidth(context) * 0.8,
            // height: ADeviceUtility.getDeviceHeight(context) * 0.6,
            // goot not many redundant call
            width: device.width * 0.8,
            height: device.height * 0.6,
          ),
          // text
          Text(
            onBoardingHeadingText,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          // Space between  the image and text
          const SizedBox(height: ASize.spaceBtwnItems),
          // subtext
          Text(
            onBoardingText,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
