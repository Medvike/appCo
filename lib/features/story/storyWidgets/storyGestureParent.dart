import 'package:app_co/features/story/storyWidgets/storyBottomBarComponents/storyBottomRowComponents/storyReplyComponents/storyReplySheet.dart';
import 'package:app_co/utils/TestFolderData/storyTestData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'storyBottomBarComponents/storyBottomRowComponents/storyViewComponents/storyViewSheet.dart';

class StoryGestureParent extends StatelessWidget {
  final Widget child;
  final StoryTestData storyTestData;
  const StoryGestureParent({super.key, required this.child, required this.storyTestData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: child,
        onVerticalDragUpdate: (details) {
      int sensitivity = 8;
      if (details.delta.dy > sensitivity) {
        Get.back();
      } else if(details.delta.dy < -sensitivity){
        Get.parameters['story'] == "me" ? storyViewSheet(context) : storyReplySheet(context);
      }
    },
        onHorizontalDragUpdate: (details) {
          if(details.delta.direction > 0){
            //storyTestData.forwardStory();
          }
          print(details.delta.direction);
        },
    onDoubleTap: () =>storyTestData.forwardStory()
    );
  }
}
