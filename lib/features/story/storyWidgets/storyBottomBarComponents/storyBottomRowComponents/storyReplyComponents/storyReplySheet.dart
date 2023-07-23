import 'package:app_co/features/story/storyWidgets/storyBottomBarComponents/storyBottomRowComponents/storyReplyComponents/storyReplySheetComponents/greyBackButton.dart';
import 'package:app_co/features/story/storyWidgets/storyBottomBarComponents/storyBottomRowComponents/storyReplyComponents/storyReplySheetComponents/storyReplyListChild.dart';
import 'package:app_co/utils/TestFolderData/storyTestData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


storyReplySheet(BuildContext context){
  showBottomSheet(context: context, builder: (context) {
    return Container(
      height: Get.height/2.6,
      child: Column(
        children: [
          StoryReplyGreyButton(),
          SizedBox(height: 10,),
          Expanded(child: ListView.builder(
            itemCount: StoryTestData.watched.length,
            itemBuilder: (context, i) {
              return StoryReplyListChild(
                name: StoryTestData.watched[i]['name'],
                index: i,
                profileColor: StoryTestData.watched[i]['color'],
                shared: StoryTestData.watched[i]['shared'],
                watchTime: StoryTestData.watched[i]['watch_time'],
              );
            },))
        ],
      ),
    );
  },);
}