import 'package:flutter/material.dart';

class StoryAppBarOptionButton extends StatelessWidget {
  const StoryAppBarOptionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){},
      icon: const Icon(Icons.more_vert),
      iconSize: 30,
      color: Colors.white,
    );
  }
}
