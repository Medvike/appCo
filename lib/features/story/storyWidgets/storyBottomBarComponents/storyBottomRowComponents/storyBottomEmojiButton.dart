import 'package:flutter/material.dart';

class StoryBottomEmojiButton extends StatelessWidget {
  const StoryBottomEmojiButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: IconButton(
        onPressed: (){},
        icon: Icon(Icons.emoji_emotions_outlined),
        iconSize: 27,
        color: Colors.white,
      ),
    );
  }
}
