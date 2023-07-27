import 'package:app_co/utils/TestFolderData/storyTestData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'storyViewSheetComponents/greyBackButton.dart';
import 'storyViewSheetComponents/storyViewListChild.dart';

storyViewSheet(BuildContext context) {
  showModalBottomSheet(
    isDismissible: true,
    isScrollControlled: true,
    enableDrag: true,
    showDragHandle: true,
    context: context,
    builder: (context) {
      return Container(
        height: Get.height / 2.3,
        child: Column(
          children: [
           // StoryViewGreyButton(),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView.builder(
                  itemCount: StoryTestData.watched.length,
                  itemBuilder: (context, i) {
                  return StoryViewListChild(
                  name: StoryTestData.watched[i]['name'],
                  index: i,
                  profileColor: StoryTestData.watched[i]['color'],
                  shared: StoryTestData.watched[i]['shared'],
                  watchTime: StoryTestData.watched[i]['watch_time'],
                );
              },
            ))
          ],
        ),
      );
    },
  );
}
