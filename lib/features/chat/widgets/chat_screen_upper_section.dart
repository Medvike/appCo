import 'package:app_co/utils/widgets/profile_picture_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoom_pinch_overlay/zoom_pinch_overlay.dart';

import '../../../utils/icons.dart';
import '../../../utils/styles.dart';
import 'stack_child_widget.dart';

class UpperSection extends StatelessWidget {
  const UpperSection({super.key});

  @override
  Widget build(BuildContext context) {
    String testImg =
        'https://th.bing.com/th/id/R.8218855f83cb9bde4ccd7a8ffbdb751c?rik=ln1PunEfSXF%2bSA&pid=ImgRaw&r=0';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: Colors.lightGreenAccent.withOpacity(.35),
                  blurRadius: 25,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return ZoomOverlay(
                          modalBarrierColor: Colors.black26,
                          twoTouchOnly: true,
                          animationDuration: const Duration(milliseconds: 300),
                          animationCurve: Curves.fastOutSlowIn,
                          child: Image.network(testImg), // TODO: User Image
                        );
                      },
                    );
                  },
                  child: ProfilePictureWidget(imageUrl: testImg, size: .25), // TODO: User Image
                ),
                Positioned(
                  bottom: Get.height * .008,
                  right: Get.width * .01,
                  child: Container(
                    width: Get.width * .055,
                    height: Get.width * .055,
                    decoration: BoxDecoration(
                      color: Colors.lightGreenAccent,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ahmed', style: MyStyles.style24), //TODO : UserName
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Online',
                  style: MyStyles.style15.copyWith(
                    color: const Color(0xFF988B8B),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          CustomIconButton(
            function: () {},
            icon: MyIcons.settings,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
