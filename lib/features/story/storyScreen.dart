
import 'package:app_co/utils/colors.dart';
import 'package:app_co/utils/images.dart';
import 'package:app_co/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: ListTile(
          leading: Icon(
            Icons.account_circle, color: MyColors.green, size: 50,
          ),
          title: Text("Me", style: MyStyles.style20.copyWith(color: Colors.white),),
          subtitle: Text("Just now", style: MyStyles.style15.copyWith(color: Colors.white),),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_vert),
            iconSize: 30,
            color: Colors.white,
          )
        ],
      ),
      backgroundColor: Colors.black,

      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: Image(
                  image: AssetImage(
                      MyImages.storyLocalImage
                  ),
                fit: BoxFit.fill,
                width: Get.width,
              ),
            )
          ],
        ),
      ),
    );
  }
}
