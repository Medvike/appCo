import 'package:app_co/features/story/widgets/status_app_bar.dart';
import 'package:flutter/material.dart';
import '../../utils/styles.dart';
import 'widgets/custom_divider.dart';
import 'widgets/floating_action_button_item.dart';
import 'widgets/statue_floating_action_button.dart';
import 'widgets/statue_widget.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ColFloatingButton(
        floatButtons: items, // Todo : Logic man go to items list please 👻
        heightGround: 10,
        delayMilli: 100,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const StatusAppBar(),
            StatueWidget(
              userName: 'Ahmed',
              imageUrl: 'https://bit.ly/44OXodx',
              puplishingDate: 'Just Now',
              onTapStatueWidget: () {
                //Todo : Show user statue
              },
              currentUser: true, // Don't touch this 😐
            ),
            Row(
              children: [
                const CustomDivider(),
                Text(
                  'Your Friends\' stories',
                  style: MyStyles.style15.copyWith(fontWeight: FontWeight.w600),
                ),
                const CustomDivider(),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, i) {
                  return StatueWidget(
                    imageUrl:
                        'https://bit.ly/3KFalPh', // Todo : Friend's Profile Image
                    puplishingDate:
                        '11:23', // Todo : Statue's Puplishing Time, Can be like [11:20 AM] or [Just now] 👋🙂
                    userName: 'Moustafa ', // Todo : Friend's Name 🤡
                    onTapStatueWidget: () {
                      //Todo : showStory();
                    },
                    onTapShareButton: () {
                      //Todo : shareStatue();
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

var items = [
  FloatingActionButtonItem(
    onPressed: () {},
    text: 'Text Statue',
    iconData: Icons.abc,
  ),
  FloatingActionButtonItem(
    onPressed: () {},
    text: 'Video Statue',
    iconData: Icons.video_file,
  ),
  FloatingActionButtonItem(
    onPressed: () {},
    text: 'Image Statue',
    iconData: Icons.image,
  ),
];
