
import 'package:app_co/utils/images.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';

class OnBoardingData{

  static List<Introduction> list = [
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

}