import 'package:app_co/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryPictureBody extends StatelessWidget {
  const StoryPictureBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(
          MyImages.storyLocalImage
      ),
      fit: BoxFit.fill,
      width: Get.width,
    );
  }
}
