import 'package:app_co/features/story/storyWidgets/storyBodyTypes/storyVideoBody.dart';
import 'package:app_co/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryBody extends StatelessWidget {
  const StoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 50),
        child: StoryVideoBody()
      ),
    );
  }
}
