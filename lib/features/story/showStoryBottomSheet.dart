import 'package:app_co/features/story/storyScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Show story as a bottom sheet
showStoryBottomSheet(BuildContext context, String story){
  Get.parameters['story'] = story;
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.black,
    builder: (context) {
      return Container(
          margin: EdgeInsets.only(top: 50),
          child: StoryScreen()
      );
    },
  );
}