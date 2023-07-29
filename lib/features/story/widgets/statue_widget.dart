import 'package:app_co/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../utils/icons.dart';
import '../../../utils/styles.dart';
import '../../../utils/widgets/profile_picture_widget.dart';

class StatueWidget extends StatelessWidget {
  const StatueWidget({
    super.key,
    required this.imageUrl,
    required this.userName,
    required this.puplishingDate,
    required this.onTapStatueWidget,
    this.onTapShareButton,
    this.currentUser = false,
  });
  final String imageUrl, userName, puplishingDate;
  final GestureTapCallback? onTapShareButton, onTapStatueWidget;
  final bool? currentUser;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      end: 1.05,
      onTap: onTapStatueWidget,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            height: Get.height * .12,
            width: Get.width * .98,
            decoration: BoxDecoration(
              color: MyColors.green,
              border: Border.all(color: Colors.black87),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Row(
                children: [
                  ProfilePictureWidget(
                    imageUrl: imageUrl,
                    size: .18,
                  ),
                  SizedBox(width: Get.width * .03),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: MyStyles.style24,
                      ),
                      Text(
                        puplishingDate,
                        style: MyStyles.style18,
                      ),
                    ],
                  ),
                  const Spacer(),
                  currentUser ?? false
                      ? const SizedBox()
                      : InkWell(
                          onTap: onTapShareButton,
                          child: SvgPicture.asset(
                            MyIcons.share,
                            width: Get.width * .07,
                          ),
                        ),
                  SizedBox(width: Get.width * .06),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
