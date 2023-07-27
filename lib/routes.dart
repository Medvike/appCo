
import 'package:app_co/features/auth/splashScreen.dart';
import 'package:app_co/features/chat/chat_screen.dart';
import 'package:app_co/features/chat/user_chats_screen.dart';
import 'package:app_co/features/onboarding/onboarding.dart';
import 'package:app_co/features/story/storyScreen.dart';
import 'package:app_co/features/welcome/Welcome.dart';
import 'package:app_co/manager/getXControllers/middelware.dart';
import 'package:app_co/manager/getXControllers/stringRoutes.dart';
import 'package:get/get.dart';

import 'features/createAccount/CreateAccount.dart';
import 'features/otp/otp.dart';
import 'features/register/register.dart';



List<GetPage<dynamic>>? routes = [
  
  GetPage(name: "/", page: ()=>const SplashScreen(), middlewares: [
    MyMiddleware()
  ]),

  // onBoarding
  GetPage(name: AppStringRoutes.onBoarding, page:()=> const OnBoarding()),
  GetPage(name: AppStringRoutes.welcome, page:()=> const Welcome()),

  // auth
  GetPage(name: AppStringRoutes.splashScreen, page:()=> const SplashScreen()),
  GetPage(name: AppStringRoutes.createAccount, page:()=> const CreateAccount()),
  GetPage(name: AppStringRoutes.verifyCode, page:()=> const Otp()),
  GetPage(name: AppStringRoutes.register, page:()=> const Register()),

  //chat
  GetPage(name: AppStringRoutes.chatScreen, page:()=> const ChatScreen()),
  GetPage(name: AppStringRoutes.userChatScreen, page:()=> const UserChatsScreen()),

  // story
  GetPage(name: AppStringRoutes.storyScreen, page:()=> const StoryScreen()),

];
