import 'package:app_co/features/story/storyWidgets/storyBottomBarComponents/storyBottomRowComponents/storyBottomEmojiButton.dart';
import 'package:app_co/features/story/storyWidgets/storyBottomBarComponents/storyBottomRowComponents/storyBottomReplyButton.dart';
import 'package:app_co/features/story/storyWidgets/storyBottomBarComponents/storyBottomRowComponents/storyBottomShareButton.dart';
import 'package:app_co/features/story/storyWidgets/storyBottomBarComponents/storyBottomRowComponents/storyBottomViewButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryBottomBarActionRow extends StatelessWidget {
  const StoryBottomBarActionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: Get.parameters['story'] != "me"
            ? [
                StoryBottomEmojiButton(),
                StoryBottomReplyButton(),
                StoryBottomShareButton()
              ]
            : [
                StoryBottomViewButton(),
              ]);
  }
}
