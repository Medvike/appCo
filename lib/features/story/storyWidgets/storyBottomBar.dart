import 'package:app_co/features/story/storyWidgets/storyBottomBarComponents/storyBottomBarActionsRow.dart';
import 'package:app_co/utils/TestFolderData/storyTestData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class StoryBottomBar extends StatelessWidget {
  final String storyReact;
  final StoryTestData storyTestData;
  final int storyIndex;
  const StoryBottomBar({super.key, required this.storyReact, required this.storyTestData, required this.storyIndex});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: Get.width,
      //color: Colors.white,
      child: StoryBottomBarActionRow(storyTestData: storyTestData,storyReact: storyReact, storyIndex: storyIndex,)
    );
  }
}
