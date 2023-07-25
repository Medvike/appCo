
import 'package:app_co/utils/images.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';

class OnBoardingData{

  static List<Introduction> list = [
    Introduction(
      title: 'Chat With Every one',
      subTitle: 'Your praivcy is save',
      imageUrl:MyImages.image1
    ),
    Introduction(
      title: 'Video Call',
      subTitle: 'You can see your loved one and talk to him ',
      imageUrl: MyImages.image2,
    ),
    Introduction(
        title: 'Receive Money',
        subTitle: 'Share your story with friends',
        imageUrl: MyImages.image3,
    ),
  ];

}