import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../utils/colors.dart';
import '../../../utils/styles.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget(
      {super.key, required this.currentUser, required this.message});
  final bool currentUser;
  final String message;
  @override
  Widget build(BuildContext context) {
    var arabic =
        RegExp(r'[ا-ب-ت-ث-ج-ح-خ-د-ذ-ر-ز-س-ش-ص-ض-ط-ظ-ع-غ-ف-ق-ك-ل-م-ن-ه-و-ي]');

    return ZoomTapAnimation(
      onLongTap: () {
        Clipboard.setData(ClipboardData(text: message));
      },
      begin: 1,
      end: .98,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: Get.height * .01),
        padding: EdgeInsets.all(Get.width * .02),
        child: Row(
          mainAxisAlignment:
              currentUser ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                padding: EdgeInsets.all(Get.height * .01),
                decoration: BoxDecoration(
                  color: currentUser
                      ? MyColors.lightGreen
                      : const Color.fromARGB(170, 32, 142, 232),
                  boxShadow: [
                    BoxShadow(
                      color: currentUser
                          ? const Color.fromARGB(190, 145, 175, 142)
                          : const Color.fromARGB(90, 53, 153, 234),
                      spreadRadius: 1.1,
                      blurRadius: 25,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  message,
                  textDirection: arabic.hasMatch(message)
                      ? TextDirection.rtl
                      : TextDirection.ltr,
                  style: MyStyles.style20.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.fade,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
