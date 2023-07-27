import 'package:app_co/features/chat/widgets/texting_text_field.dart';
import 'package:app_co/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/colors.dart';
import 'chat_screen_upper_section.dart';
import 'custom_divider_widget.dart';

class ChatScreenBody extends StatelessWidget {
  const ChatScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            color: MyColors.green,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: Get.width,
              height: Get.height * .85,
              alignment: Alignment.bottomCenter,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(60),
                  topLeft: Radius.circular(60),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const CustomDivider(),
                  const UpperSection(),
                  Expanded(
                    child: Container(),
                  ),
                  TextingTextField(controller: controller),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
