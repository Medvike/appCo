import 'package:app_co/features/story/storyWidgets/storyBottomBarComponents/storyBottomRowComponents/storyBottomEmojiButton.dart';
import 'package:app_co/features/story/storyWidgets/storyBottomBarComponents/storyBottomRowComponents/storyBottomReplyButton.dart';
import 'package:app_co/features/story/storyWidgets/storyBottomBarComponents/storyBottomRowComponents/storyBottomShareButton.dart';
import 'package:app_co/features/story/storyWidgets/storyBottomBarComponents/storyBottomRowComponents/storyBottomViewButton.dart';
import 'package:app_co/utils/TestFolderData/storyTestData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryBottomBarActionRow extends StatelessWidget {
  final String storyReact;
  final int storyIndex;
  final StoryTestData storyTestData;
  const StoryBottomBarActionRow({super.key, required this.storyReact, required this.storyIndex, required this.storyTestData});

  @override
  Widget build(BuildContext context) {
    return  Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: Get.parameters['story'] != "me" ? [
        StoryBottomEmojiButton(storyIndex: storyIndex, storyTestData:storyTestData ),

        StoryBottomReplyButton(),

        StoryBottomShareButton(storyTestData: storyTestData,)

      ] : [
        StoryBottomViewButton(),
      ]
    );
  }
}
