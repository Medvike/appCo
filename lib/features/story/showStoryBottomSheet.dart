import 'package:app_co/features/story/storyScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Show story as a bottom sheet
showStoryBottomSheet(BuildContext context, String story, String type){
  Get.parameters['story'] = story;
  Get.parameters['storyType'] = type;
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