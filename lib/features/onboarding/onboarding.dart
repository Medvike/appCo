import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';

class Onboarding extends StatelessWidget {
  Onboarding({Key? key}) : super(key: key);
  final List<Introduction> list = [
    Introduction(
      title: 'Chat With Every one',
      subTitle: 'Your Praivcy Is Save',
      imageUrl: 'assets/images/image1.png',
    ),
    Introduction(
      title: 'Video Call',
      subTitle: 'You Can See Your Loved One and Talk To him ',
      imageUrl: 'assets/images/image2.png',
    ),
    Introduction(
      title: 'Receive Money',
      subTitle: 'Share Your Story With Friends',
      imageUrl: 'assets/images/image3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      backgroudColor: const Color(0xffA0C49E),
      foregroundColor: const Color(0xffA0C49E),
      introductionList: list,
      // onTapSkipButton: () => Navigator.push(
      //     context,MaterialPageRoute(
      //       builder: (context) => const Welcome(),
      //     )),
      skipTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 18,
      ),
    );
  }
}