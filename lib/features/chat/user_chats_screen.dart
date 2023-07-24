import 'package:app_co/features/chat/widgets/user_chats_screen_body.dart';
import 'package:flutter/material.dart';


class UserChatsScreen extends StatelessWidget {
  const UserChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: UserChatsScreenBody(),
    );
  }
}
