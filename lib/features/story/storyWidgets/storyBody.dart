import 'package:app_co/features/story/storyWidgets/storyBodyTypes/storyPictureBody.dart';
import 'package:app_co/features/story/storyWidgets/storyBodyTypes/storyTextBody.dart';
import 'package:app_co/features/story/storyWidgets/storyBodyTypes/storyVideoBody.dart';
import 'package:app_co/utils/TestFolderData/storyTestData.dart';
import 'package:app_co/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              //margin: const EdgeInsets.only(top: 50),
              width: Get.width,
              child: type == "text" ? StoryTextBody(text: data, backColor: backColor,)
                  : type == "video" ? StoryVideoBody(videoUrl: data,) :
              type == "picture" ? StoryPictureBody(imgUrl: data,) : Container()
            ),
          ),
          GetBuilder<StoryTestData>(
            builder: (controller) {
              return Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: controller.showE ? controller.reactType == "str" ? Text(controller.reactData.toString(), style: TextStyle(
                  fontSize: 50
                ),textAlign: TextAlign.center,).animate().scale().fadeOut(duration: Duration(seconds: 1)) : Icon(controller.reactData,color: Colors.blue, size: 40,).animate().scale().fadeOut(duration: Duration(seconds: 1)) :
                Text(""),
              );
            }
          ),

        ],
      ),
    );
  }
}
