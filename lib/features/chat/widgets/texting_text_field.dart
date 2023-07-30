import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../utils/icons.dart';
import '../../../utils/styles.dart';

class TextingTextField extends StatelessWidget {
  const TextingTextField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: Get.width,
      height: Get.height * .068,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onTap: () {},
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Message',
                hintStyle:
                    MyStyles.style18.copyWith(fontWeight: FontWeight.w700),
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  left: Get.width * .04,
                  right: Get.width * .02,
                ),
              ),
            ),
          ),
          Row(
            children: [
              InkWell(
                onLongPress: () {
                  debugPrint('Start Recording');
                },
                child: SvgPicture.asset(MyIcons.mic),
              ),
              const SizedBox(width: 10),
              InkWell(
                onTap: () {
                  debugPrint('Send File');
                },
                child: SvgPicture.asset(MyIcons.file),
              ),
              const SizedBox(width: 10),
              InkWell(
                onTap: () {
                  debugPrint('Send Message');
                },
                child: SvgPicture.asset(MyIcons.send),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ],
      ),
    );
  }
}
