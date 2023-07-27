
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';

class StoryTextBody extends StatelessWidget {

   Color? backColor;
  final String text;

   StoryTextBody({super.key, this.backColor, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      color: backColor ?? Colors.pink,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: AutoSizeText(
              minFontSize: 8,
              text,
            textAlign: TextAlign.start,
            overflow: TextOverflow.clip,
            style: TextStyle(
              color: Colors.white,
                  fontSize: 40
            ),
          ),
        ),
      ),
    );
  }
}
