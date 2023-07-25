import 'package:app_co/utils/widgets/profile_picture_widget.dart';
import 'package:flutter/material.dart';

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
    TextEditingController controller = TextEditingController();
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
              const UpperSection(),
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.all(20),
                width: width,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: 60,
                      width: width * .5,
                      child: TextField(
                        controller: controller,
                        decoration: InputDecoration(
                          hintText: 'Message',
                          hintStyle: MyStyles.style18
                              .copyWith(fontWeight: FontWeight.w700),
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.only(left: 20, top: 10),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          padding: EdgeInsets.zero,
                          icon: const Icon(
                            Icons.mic,
                            size: 35,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          padding: EdgeInsets.zero,
                          icon: const Icon(
                            Icons.pentagon,
                            size: 35,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          mouseCursor: MouseCursor.uncontrolled,
                          padding: EdgeInsets.zero,
                          icon: const Icon(
                            Icons.send,
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

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
