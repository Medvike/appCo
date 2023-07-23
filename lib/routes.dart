
import 'package:app_co/features/auth/splashScreen.dart';
import 'package:app_co/features/story/storyScreen.dart';
import 'package:app_co/manager/getXControllers/middelware.dart';
import 'package:app_co/manager/getXControllers/stringRoutes.dart';
import 'package:get/get.dart';



List<GetPage<dynamic>>? routes = [
  
  GetPage(name: "/", page: ()=>const SplashScreen(), middlewares: [
    MyMiddleware()
  ]),

  GetPage(name: AppStringRoutes.splashScreen, page:()=> const SplashScreen()),
  GetPage(name: AppStringRoutes.storyScreen, page:()=> const StoryScreen()),


];
