import 'package:app_co/utils/styles.dart';
import 'package:flutter/material.dart';

class StoryReplyListChild extends StatelessWidget {
  final int index;
  final String name;
  final String watchTime;
  final Color profileColor;
  final bool shared;
  const StoryReplyListChild({super.key, required this.index, required this.name, required this.watchTime, required this.profileColor, required this.shared});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        child: ListTile(
          leading: Icon(
            Icons.account_circle, color: profileColor, size: 50,
          ),
          title: Text(name, style: MyStyles.style20),
          subtitle: Text(watchTime, style: MyStyles.style15),
          trailing: Container(
            width: 70,
            child: Row(
              children: [
                Expanded(
                    child: Icon(Icons.emoji_emotions, color: Colors.orangeAccent,)
                ),
                shared ? Expanded(
                    child:  Icon(Icons.mobile_screen_share,)
                ) : Container(),
              ],
            ),
          ),
        )
    );
  }
}
