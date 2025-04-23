import 'package:e_commerce_app_self/utils/constants/app_constants/size.dart';
import 'package:e_commerce_app_self/utils/device_utility/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkipWidget extends StatelessWidget {
  const OnBoardingSkipWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: ADeviceUtility.appBarHeight,
      right: ASize.defaultSpace,
      child: GestureDetector(onTap: () {}, child: Text("Skip")),
    );
  }
}
