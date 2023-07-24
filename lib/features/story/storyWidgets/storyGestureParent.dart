import 'package:app_co/features/story/storyWidgets/storyBottomBarComponents/storyBottomRowComponents/storyReplyComponents/storyReplySheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'storyBottomBarComponents/storyBottomRowComponents/storyViewComponents/storyViewSheet.dart';

class StoryGestureParent extends StatelessWidget {
  final Widget child;
  const StoryGestureParent({super.key, required this.child});

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
    });
  }
}
