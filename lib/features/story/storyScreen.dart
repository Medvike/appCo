

import 'package:app_co/features/story/showStoryBottomSheet.dart';
import 'package:app_co/features/story/storyWidgets/storyAppBarComponents/appBarTitle.dart';
import 'package:app_co/features/story/storyWidgets/storyAppBarComponents/optionsButton.dart';
import 'package:app_co/features/story/storyWidgets/storyBody.dart';
import 'package:app_co/features/story/storyWidgets/storyBottomBar.dart';
import 'package:app_co/features/story/storyWidgets/storyGestureParent.dart';
import 'package:app_co/features/story/storyWidgets/storyUpRow.dart';
import 'package:app_co/utils/TestFolderData/storyTestData.dart';
import 'package:app_co/utils/colors.dart';
import 'package:app_co/utils/images.dart';
import 'package:app_co/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipe_widget/swipe_widget.dart';

import 'storyWidgets/storyBottomBarComponents/storyBottomRowComponents/storyViewComponents/storyViewSheet.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    StoryTestData storyTestData = Get.put(StoryTestData());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 12,
        title: AppBarTitle(story: Get.parameters['story'] ?? "me"),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: const [
          StoryAppBarOptionButton()
        ],
      ),
      backgroundColor: Colors.black,

      body: StoryGestureParent(
        storyTestData: storyTestData,
        child: GetBuilder<StoryTestData>(
          builder: (controller) {
            return Container(
              height: Get.height,
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StoryUpRow(length: controller.storyLength),
                  StoryBody(type: controller.stories[controller.currentStory]['type'], data: controller.stories[controller.currentStory]['data'],),
                  Text("${controller.stories[controller.currentStory]['desc']}", style: MyStyles.style15.copyWith(color: Colors.white),),
                  const SizedBox(height: 20,),
                  const StoryBottomBar(),
                  const SizedBox(height: 10,)
                ],
              ),
            );
          }
        ),
      )
    );
  }
}
