import 'package:app_co/features/chat/widgets/chat_screen_body.dart';
import 'package:app_co/utils/colors.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.green,
      body: const ChatScreenBody(),
    );
  }
}
