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
            SizedBox(height: 30,),
            ElevatedButton.icon(onPressed: (){
              Get.offNamed(AppStringRoutes.storyScreen);
            }, label: Text("GO"), icon: Icon(Icons.arrow_forward_ios)),
          ],
        ),
      ),
    );
  }
}
