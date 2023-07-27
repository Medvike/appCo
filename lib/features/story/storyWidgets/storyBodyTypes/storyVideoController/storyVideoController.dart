import 'package:app_co/utils/images.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

abstract class StoryVideoControllerAbs extends GetxController{

  playVideo();
  pauseVideo();

}

class StoryVideoController extends StoryVideoControllerAbs{

  late VideoPlayerController videoController;
  String url = "https://www.youtube.com/watch?v=uST5wFsjUjg";

  @override
  pauseVideo() {
    videoController.pause();
  }

  @override
  playVideo() {
    videoController.play();
  }



@override
  void onInit() {
  videoController = VideoPlayerController.asset(MyImages.video);
  videoController.initialize().then((value){
    videoController.play();
    update();
  });
    super.onInit();
  }

  @override
  void dispose() {
    videoController.pause();
    videoController.dispose();
    update();

    super.dispose();
  }
}