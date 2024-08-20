import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tstore/features/authentication/screens/onboarding/onboarding.dart';
import 'package:tstore/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'T Store',
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),

    );
  }
}
