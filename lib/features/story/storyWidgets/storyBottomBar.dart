import 'package:app_co/features/story/storyWidgets/storyBottomBarComponents/storyBottomBarActionsRow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class StoryBottomBar extends StatelessWidget {
  const StoryBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: Get.width,
      //color: Colors.white,
      child: StoryBottomBarActionRow()
    );
  }
}
