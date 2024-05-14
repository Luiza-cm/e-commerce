import 'package:flutter/material.dart';
import 'package:flutter_learnings/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter_learnings/utils/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}