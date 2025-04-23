import 'package:e_commerce_app_self/utils/constants/app_constants.dart';
import 'package:e_commerce_app_self/utils/device_utility/device_utility.dart';
import 'package:flutter/material.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: ADeviceUtility.bottomNagivationBar - 20,
      right: ASize.defaultSpace,
      child: IconButton(
        // TODO: add function
        onPressed: () {},
        icon: Icon(Icons.navigate_next, color: Colors.white),
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.black),
        ),
      ),
    );
  }
}
