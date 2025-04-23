import 'package:e_commerce_app_self/utils/themes/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

class ATheme {
  ATheme._();
  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: ATextTheme.lightTextTheme,
  );
  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    textTheme: ATextTheme.darkTextTheme,
  );
}
