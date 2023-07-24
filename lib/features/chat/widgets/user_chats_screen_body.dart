import 'user_chats_list_view_widget.dart';
import 'package:flutter/material.dart';
import 'search_bar_widget.dart';
import 'custom_app_bar.dart';

class ChatScreenBody extends StatelessWidget {
  const ChatScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String testingImage =
        'https://th.bing.com/th/id/OIP.pfmJ1zwMOtnXAWGrZr_nyQAAAA?pid=ImgDet&rs=1';

    TextEditingController searchController = TextEditingController();
    return SafeArea(
      child: Column(
        children: [
          CustomAppBar(userImage: testingImage, userName: 'ALIA'),
          const SizedBox(height: 16),
          SearchBarWidget(controller: searchController),
          const SizedBox(height: 16),
          const UserChatsListViewWidget(),
        ],
      ),
    );
  }
}
