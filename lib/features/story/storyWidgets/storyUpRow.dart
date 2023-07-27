import 'package:app_co/utils/TestFolderData/storyTestData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryUpRow extends StatelessWidget {
  final int length;
  const StoryUpRow({super.key, required this.length});

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<StoryTestData>(
      builder: (controller) {
        return Row(
          children: List.generate(length, (i) => Expanded(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              margin: EdgeInsets.symmetric(horizontal: 2,vertical: 2),
              height: 3,
              decoration: BoxDecoration(
                  color: i == controller.currentStory ? Colors.green : Colors.white70,
                  borderRadius: BorderRadius.all(Radius.circular(8))
              ),
            ),
          )),
        );
      }
    );
  }
}
