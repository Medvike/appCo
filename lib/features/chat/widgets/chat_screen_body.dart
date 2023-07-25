import 'package:app_co/manager/getXControllers/stringRoutes.dart';
import 'package:app_co/utils/colors.dart';
import 'package:app_co/utils/widgets/profile_picture_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../utils/icons.dart';
import '../../../utils/styles.dart';
import 'custom_divider_widget.dart';
import 'stack_child_widget.dart';

class ChatScreenBody extends StatelessWidget {
  const ChatScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String testImg =
        'https://th.bing.com/th/id/R.8218855f83cb9bde4ccd7a8ffbdb751c?rik=ln1PunEfSXF%2bSA&pid=ImgRaw&r=0';
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: width,
          height: height * .85,
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
              Padding(
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
                          ProfilePictureWidget(imageUrl: testImg, size: .25),
                          Positioned(
                            bottom: 5,
                            right: 5,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.lightGreenAccent,
                                borderRadius: BorderRadius.circular(10),
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
                        Text('Ahmed', style: MyStyles.style24),
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
                    Spacer(),
                    GestureDetector(
                      onTap: (){
                        Get.toNamed(AppStringRoutes.userChatScreen);
                      },
                      child: Container(
                        width: width * .134,
                        height: width * .134,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.black,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: SvgPicture.asset(
                            MyIcons.settings,
                            // ignore: deprecated_member_use
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
