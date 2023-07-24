import 'package:app_co/features/story/storyWidgets/storyBottomBarComponents/storyBottomRowComponents/storyReplyComponents/replySheetCom/replySendButton.dart';
import 'package:app_co/features/story/storyWidgets/storyBottomBarComponents/storyBottomRowComponents/storyReplyComponents/replySheetCom/replyTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

storyReplySheet(BuildContext context) {
  showDialog(
    barrierColor: Colors.transparent,
    context: context, builder: (context) {
    return AlertDialog(
      backgroundColor: Colors.black,
      contentPadding: EdgeInsets.zero,
      alignment:Alignment.bottomCenter ,
      scrollable: true,
      content: SizedBox(
        width: Get.width,
        child:const Row(
          children: [
            ReplyTextField(),
            SizedBox(width: 10,),
           ReplySendButton()
          ],
        ),
      ),
    );
  },);
}
