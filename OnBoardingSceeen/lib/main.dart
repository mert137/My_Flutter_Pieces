import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shallwe/app/screens/OnBoardingScreen/onboardingscreen.dart';
import 'constants.dart';
import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: 'Shall We?',
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: OnBoardingScreen(),
    );
  }
}