import 'package:app_co/features/story/storyWidgets/storyBodyTypes/storyVideoController/storyVideoController.dart';
import 'package:app_co/utils/colors.dart';
import 'package:app_co/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';


class StoryVideoBody extends StatefulWidget {
  final String videoUrl;
  const StoryVideoBody({super.key, required this.videoUrl});

  @override
  State<StoryVideoBody> createState() => _StoryVideoBodyState();
}

class _StoryVideoBodyState extends State<StoryVideoBody> {
  late VideoPlayerController videoController;
  String url = "https://www.youtube.com/watch?v=uST5wFsjUjg";

  @override
  void initState() {
    super.initState();
    videoController = VideoPlayerController.asset(widget.videoUrl)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {
          videoController.play();
        });
      });
  }
  bool show = false;
  @override
  void dispose() {
    videoController.pause();
    videoController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return InkWell(
      child: Stack(
        children: [
          Positioned(
            top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: VideoPlayer(videoController)
          ),
          Positioned(
              child: Center(
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 100),
                  padding: EdgeInsets.all(5),
                  child: Icon(
                      !videoController.value.isPlaying
                          ? Icons.play_circle_outline: Icons.pause_circle_outline,
                    size: 60,
                    color: videoController.value.isPlaying ? Colors.transparent : MyColors.green,
                  ),
                  decoration: BoxDecoration(
                    color: videoController.value.isPlaying ? Colors.transparent : MyColors.lightGreen.withOpacity(0.3),
                    borderRadius: BorderRadius.all(Radius.circular(70))
                  ),
                )
              )
          )
        ],
      ),
      onTap: (){
        setState(() {
          if(videoController.value.isPlaying){
            videoController.pause();
          }else{
            videoController.play();
          }
        });
      },
    );
  }
}
