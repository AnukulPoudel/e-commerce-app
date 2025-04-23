import 'package:flutter/material.dart';

class ADeviceUtility {
  ADeviceUtility._();

  static const appBarHeight = kToolbarHeight;
  static const bottomNagivationBar = kBottomNavigationBarHeight;

  static double getDeviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double getDeviceWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static bool isDarkMode(context) =>
      Theme.of(context).brightness == Brightness.dark;
}
