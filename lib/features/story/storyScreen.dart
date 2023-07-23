

import 'package:app_co/features/story/storyWidgets/storyAppBarComponents/appBarTitle.dart';
import 'package:app_co/features/story/storyWidgets/storyAppBarComponents/optionsButton.dart';
import 'package:app_co/features/story/storyWidgets/storyBody.dart';
import 'package:app_co/features/story/storyWidgets/storyBottomBar.dart';
import 'package:app_co/utils/images.dart';
import 'package:app_co/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            StoryBody(),

            StoryBottomBar(),
          ],
        ),
      ),
    );
  }
}
