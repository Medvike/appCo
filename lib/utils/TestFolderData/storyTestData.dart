
import 'package:app_co/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class StoryTestAbs extends GetxController{
  forwardStory();
  backStory();
  showEffect(String reType, dynamic data);
  hideEffect();
}
class StoryTestData extends StoryTestAbs {

  int storyLength = 3;
  int currentStory = 0;

  bool showE = false;

   String reactType = "str";
   dynamic reactData;


  @override
  forwardStory(){
    if(currentStory < storyLength-1){
      currentStory += 1;
      update();
      print(currentStory);
    }else{
      currentStory = 0;
      update();
      Get.back();
    }
  }
  @override
  backStory() {
    if(currentStory > 0){
      currentStory -= 1;
      update();
      print(currentStory);
    }else{
      currentStory = storyLength - 1;
      update();
      Get.back();
    }
  }


  @override
  showEffect(String reType, dynamic data){
    reactType = reType;
    reactData = data;
     showE = true;
      update();
  }

  @override
  hideEffect(){
    showE = false;
    update();
  }

   List watched = [
    {
      "name": "Ali",
      "watch_time": "11:00",
      "react": 0,
      "shared": true,
      "color": Colors.blue
    },
    {
      "name": "Inna",
      "watch_time": "12:12",
      "react": 1,
      "shared": false,
      "color": Colors.orange
    },
    {
      "name": "Sara",
      "watch_time": "11:10",
      "react": 3,
      "shared": false,
      "color": Colors.grey
    },
    {
      "name": "ahmed",
      "watch_time": "11:20",
      "react": 2,
      "shared": true,
      "color": Colors.red
    },
    {
      "name": "mohamed",
      "watch_time": "12:20",
      "react": 1,
      "shared": true,
      "color": Colors.green
    }
  ];


  List stories = [
    {
      "type": "video",
      "data": MyImages.video,
      "desc" : "video description",
      "react" : "none"
    },

    {
      "type": "picture",
      "data": MyImages.storyLocalImage,
      "desc" : "picture description",
      "react" : "none"
    },
    {
      "type": "text",
      "data": "my text test story data",
      "bgColor": Colors.green,
      "desc" : "text description",
      "react" : "none"
    }
  ];

  @override
  void onInit() {
    currentStory = 0;
    super.onInit();
  }

  @override
  void onClose() {
    print("close");
    super.onClose();
  }

@override
  void onReady() {
    print("ready");
    super.onReady();
  }




}
