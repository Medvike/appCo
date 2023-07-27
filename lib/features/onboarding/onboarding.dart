import 'package:app_co/features/onboarding/onBoardingData/onBoardingData.dart';
import 'package:app_co/manager/getXControllers/stringRoutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(

      foregroundColor: const Color(0xffA0C49E),
      introductionList: OnBoardingData.list,
      onTapSkipButton: () => Get.offNamed(AppStringRoutes.welcome),
      skipTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 18,
      ),
    );
  }
}