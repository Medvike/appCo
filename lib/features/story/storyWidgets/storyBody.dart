import 'package:app_co/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryBody extends StatelessWidget {
  const StoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 70),
        child: Image(
          image: AssetImage(
              MyImages.storyLocalImage
          ),
          fit: BoxFit.fill,
          width: Get.width,
        ),
      ),
    );
  }
}
