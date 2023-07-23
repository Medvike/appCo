import 'package:app_co/utils/styles.dart';
import 'package:flutter/material.dart';

import 'storyReplyComponents/storyReplySheet.dart';

class StoryBottomViewButton extends StatelessWidget {
  const StoryBottomViewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: InkWell(
        splashColor: Colors.transparent,
        overlayColor: MaterialStateColor.resolveWith((states) => Colors.transparent),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.keyboard_arrow_up_outlined, color: Colors.white, size: 25,),
            Text("View", style: MyStyles.style15.copyWith(color: Colors.white), textAlign: TextAlign.center,),
          ],
        ),
        onTap: ()=>storyReplySheet(context),
      ),
    );
  }
}