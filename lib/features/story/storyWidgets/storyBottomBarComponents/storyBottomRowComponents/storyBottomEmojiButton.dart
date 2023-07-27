
import 'package:app_co/features/story/emojis/emojisModels/emojisModel.dart';
import 'package:app_co/features/story/emojis/emojisWidget/emojisBottomSheet.dart';
import 'package:app_co/utils/TestFolderData/storyTestData.dart';

import 'package:app_co/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryBottomEmojiButton extends StatelessWidget {
  final StoryTestData storyTestData;
  final int storyIndex;
  const StoryBottomEmojiButton({super.key, required this.storyTestData, required this.storyIndex});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GetBuilder<Emojis>(
        builder: (controller) {
          return Container(
            decoration: BoxDecoration(
             // color: Colors.blue
            ),
            child: InkWell(
              overlayColor: MaterialStateColor.resolveWith((states) => Colors.transparent),
              child: Text(storyTestData.stories[storyIndex]['react'] == "none"
                  ? controller.emojis[2]['data'] :
              storyTestData.stories[storyIndex]['react']
                , textAlign: TextAlign.center, style: TextStyle(fontSize: 30, color: storyTestData.stories[storyIndex]['react'] != "none" ? Colors.red : Colors.white),),
              onDoubleTap: (){
                storyTestData.hideEffect();

                controller.setDefaultLove(storyTestData, storyIndex);
                storyTestData.showEffect("str", controller.emojis[2]['data']);
              },
              onLongPress: (){
                storyTestData.hideEffect();
                showEmojisBottomSheet(context, controller, storyTestData,storyIndex);

              }
            ),
          );
        }
      )
    );
  }
}
