import 'package:flutter/material.dart';
import '../../../utils/colors.dart';
import 'user_chats_list_view_item.dart';

class UserChatsListViewWidget extends StatelessWidget {
  const UserChatsListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    String testingImage =
        'https://th.bing.com/th/id/OIP.pfmJ1zwMOtnXAWGrZr_nyQAAAA?pid=ImgDet&rs=1';

    double height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const[
             BoxShadow(
              offset: Offset(0, 2),
              color: MyColors.lightGreen,
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
          color: MyColors.green,
          borderRadius: const BorderRadius.only(
            topRight:  Radius.circular(40),
            topLeft:  Radius.circular(40),
          ),
        ),
        child: ListView.builder(
          itemCount: 4,
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: width * .041),
          itemExtent: height * .15,
          itemBuilder: (context, index) {
            return UserChatsListViewItemWidget(
              userName: 'TAHA',
              userImage: testingImage,
              closingTime: '11:10 AM',
              isThereMissedCall: true,
              latestMessage: 'Latest message',
            );
          },
        ),
      ),
    );
  }
}
