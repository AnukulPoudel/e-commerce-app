import 'package:e_commerce_app_self/features/authentication/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(),
      darkTheme: ThemeData(),
      home: const OnboardingScreen(),
    );
  }
}
