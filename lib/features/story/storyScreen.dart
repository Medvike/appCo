

import 'package:app_co/features/story/showStoryBottomSheet.dart';
import 'package:app_co/features/story/storyWidgets/storyAppBarComponents/appBarTitle.dart';
import 'package:app_co/features/story/storyWidgets/storyAppBarComponents/optionsButton.dart';
import 'package:app_co/features/story/storyWidgets/storyBody.dart';
import 'package:app_co/features/story/storyWidgets/storyBottomBar.dart';
import 'package:app_co/features/story/storyWidgets/storyGestureParent.dart';
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
    return StoryGestureParent(
      child:  Scaffold(
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

        body: Container(
          height: Get.height,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

             const StoryBody(),
              Text("Story description", style: MyStyles.style15.copyWith(color: Colors.white),),
              const SizedBox(height: 20,),
              const StoryBottomBar(),
              const SizedBox(height: 10,)
            ],
          ),
        )
      ),
    );
  }
}
