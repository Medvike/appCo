import 'package:app_co/features/story/showStoryBottomSheet.dart';
import 'package:app_co/features/story/storyScreen.dart';
import 'package:app_co/manager/getXControllers/stringRoutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'XTeam',
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(height: 100,),
            SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton.icon(onPressed: (){
                showStoryBottomSheet(context, "me");
              }, label: Text("My story"), icon: Icon(Icons.arrow_forward_ios)),
            ),
            SizedBox(height: 40,),
            SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton.icon(onPressed: (){

                showStoryBottomSheet(context, "Lina");
              }, label: Text("Lina Story"), icon: Icon(Icons.arrow_forward_ios)),
            ),
          ],
        ),
      ),
    );
  }
}
