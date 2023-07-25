import 'package:app_co/features/story/storyWidgets/storyBodyTypes/storyVideoController/storyVideoController.dart';
import 'package:app_co/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';


class StoryVideoBody extends StatefulWidget {
  const StoryVideoBody({super.key});

  @override
  State<StoryVideoBody> createState() => _StoryVideoBodyState();
}

class _StoryVideoBodyState extends State<StoryVideoBody> {
  late VideoPlayerController videoController;
  String url = "https://www.youtube.com/watch?v=uST5wFsjUjg";

  @override
  void initState() {
    super.initState();
    videoController = VideoPlayerController.asset(MyImages.video)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {
          videoController.play();
        });
      });
  }
  @override
  void dispose() {
    videoController.pause();
    videoController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        VideoPlayer(videoController),
      ],
    );
  }
}
