import 'package:flutter/material.dart';

class StoryBottomShareButton extends StatelessWidget {
  const StoryBottomShareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Expanded(
        child: IconButton(
          onPressed: (){},
          icon: Icon(Icons.share_outlined),
          iconSize: 27,
          color: Colors.white,
        ),
      );
  }
}
