import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryReplyGreyButton extends StatelessWidget {
  const StoryReplyGreyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 120, vertical: 5),
      width: Get.width,
      height: 8,
      decoration: BoxDecoration(
          color: Color(0xff9E9795),
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
    );
  }
}
