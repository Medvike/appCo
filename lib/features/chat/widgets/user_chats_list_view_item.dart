// ignore_for_file: deprecated_member_use

import 'package:app_co/features/chat/chat_screen.dart';
import 'package:app_co/manager/getXControllers/stringRoutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../utils/colors.dart';
import '../../../utils/icons.dart';
import '../../../utils/styles.dart';
import '../../../utils/widgets/profile_picture_widget.dart';

class UserChatsListViewItemWidget extends StatelessWidget {
  const UserChatsListViewItemWidget({
    super.key,
    required this.userImage,
    required this.userName,
    required this.latestMessage,
    required this.closingTime,
    required this.isThereMissedCall,
  });
  final String userImage, userName, latestMessage, closingTime;
  final bool isThereMissedCall;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ZoomTapAnimation(
      begin: 1,
      end: 0.97,
      onTap: () {
        Get.to(ChatScreen());
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 22),
        padding: EdgeInsets.only(left: width * .07, right: 18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Row(
          children: [
            ProfilePictureWidget(imageUrl: userImage, size: .165),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(userName, style: MyStyles.style24),
                Text(
                  latestMessage,
                  style: MyStyles.style15.copyWith(
                    color: MyColors.grey,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding:
                  EdgeInsets.only(top: height * .015, bottom: height * .025),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    closingTime,
                    style: MyStyles.style20.copyWith(color: MyColors.grey),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    MyIcons.missedCall,
                    width: width * .075,
                    color: isThereMissedCall ? null : const Color(0xFFFFFFFF),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
