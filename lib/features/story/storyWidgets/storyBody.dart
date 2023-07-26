import 'package:app_co/features/story/storyWidgets/storyBodyTypes/storyPictureBody.dart';
import 'package:app_co/features/story/storyWidgets/storyBodyTypes/storyTextBody.dart';
import 'package:app_co/features/story/storyWidgets/storyBodyTypes/storyVideoBody.dart';
import 'package:app_co/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryBody extends StatelessWidget {
  final String type;
  final String data;
  Color? backColor;
   StoryBody({super.key, this.backColor, required this.type, required this.data});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 50),
        child: type == "text" ? StoryTextBody(text: data, backColor: backColor,)
            : type == "video" ? StoryVideoBody(videoUrl: data,) :
        type == "picture" ? StoryPictureBody(imgUrl: data,) : Container()
      ),
    );
  }
}
