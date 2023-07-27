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
    bool left = true;
    bool right = true;
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
        onHorizontalDragStart: (details) {
          left = true;
          right = true;
        },
        onHorizontalDragUpdate: (details) {
        print(1);
          print(details.delta.direction);
          if(details.delta.dx < -5){
            if(left){
              storyTestData.forwardStory();
              left = false;
            }
          }
        if(details.delta.dx > 5){
          if(right){
            storyTestData.backStory();
            right = false;
          }
        }
        //   if(details.delta.direction < 0){
        //   //storyTestData.forwardStory();
        //   if(right){
        //     storyTestData.backStory();
        //     right = false;
        //   }
        // }

        },
    onDoubleTap: () =>storyTestData.forwardStory()
    );
  }
}
