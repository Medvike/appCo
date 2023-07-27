
import 'package:app_co/utils/TestFolderData/storyTestData.dart';
import 'package:get/get.dart';

abstract class EmojisAbs extends GetxController{
  setDefaultLove(StoryTestData storyTestData, int storyIndex);
  setEmoji(StoryTestData storyTestData, String selectedReaction, int storyIndex);
}

class Emojis extends EmojisAbs{
   List emojis = [
    {
      "name" : "haha",
      "data" : "😂"
    },
    {
      "name" : "sad",
      "data" : "😥"
    },
    {
      "name" : "love",
      "data" : "❤️"
    },
    {
      "name" : "angry",
      "data" : "😡"
    },
    {
      "name" : "like",
      "data" : "👍🏻"
    },
    {
      "name" : "fear",
      "data" : "😨"
    },

  ];

  @override
  setDefaultLove(StoryTestData storyTestData, int storyIndex) {

      if(storyTestData.stories[storyIndex]['react'] == "none"){
        storyTestData.stories[storyIndex]['react'] = emojis[2]['data'];
        update();
      }else{
        storyTestData.stories[storyIndex]['react'] = "none";
        update();
      }
      print(storyTestData.stories[storyIndex]['react']);

  }

  @override
  setEmoji(StoryTestData storyTestData, String selectedReaction, int storyIndex) {

    storyTestData.stories[storyIndex]['react'] = selectedReaction;
    print(storyTestData.stories[storyIndex]['react']);
      update();
      Get.back();
  }

}