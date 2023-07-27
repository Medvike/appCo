
import 'package:app_co/features/story/emojis/emojisModels/emojisModel.dart';
import 'package:app_co/utils/TestFolderData/storyTestData.dart';
import 'package:flutter/material.dart';

showEmojisBottomSheet(BuildContext context, Emojis emojisController, StoryTestData storyTestData, int storyIndex){
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context, builder: (context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
          color: Colors.white.withAlpha(220),
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: emojisController.emojis.map(
                (e) =>
                InkWell(
                  child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      child: Text(e['data'], textAlign: TextAlign.center, style: TextStyle(fontSize: 30, color: Colors.red),
                      )
                  ),
                  onTap: () {
                    emojisController.setEmoji(storyTestData, e['data'], storyIndex);
                    storyTestData.showEffect("str", e['data']);
                  }
                )
        ).toList(),
      ),
    );
  },);
}

