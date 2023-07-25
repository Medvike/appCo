import 'package:app_co/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';

import '../welcome/Welcome.dart';

class Onboarding extends StatelessWidget {
  Onboarding({Key? key}) : super(key: key);
  final List<Introduction> list = [
    Introduction(
      title: 'Chat With Every one',
      subTitle: 'Your Praivcy Is Save',
      imageUrl: MySvg.image1,
    ),
    Introduction(
      title: 'Video Call',
      subTitle: 'You Can See Your Loved One and Talk To him ',
      imageUrl: MySvg.image2,
    ),
    Introduction(
      title: 'Receive Money',
      subTitle: 'Share Your Story With Friends',
      imageUrl: MySvg.image3
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      backgroudColor: const Color(0xffA0C49E),
      foregroundColor: const Color(0xffA0C49E),
      introductionList: list,
      onTapSkipButton: () => Navigator.push(
          context,MaterialPageRoute(
            builder: (context) => const Welcome(),
          )),
      skipTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 18,
      ),
    );
  }
}