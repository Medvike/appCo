import 'package:app_co/features/chat/user_chats_screen.dart';
import 'package:app_co/manager/getXControllers/services.dart';
import 'package:app_co/routes.dart';
import 'package:app_co/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserChatsScreen(),
    );
  }
}