import 'package:app_co/features/story/storyWidgets/emojis/emojis.dart';
import 'package:app_co/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryBottomEmojiButton extends StatefulWidget {
  const StoryBottomEmojiButton({super.key});

  @override
  State<StoryBottomEmojiButton> createState() => _StoryBottomEmojiButtonState();
}

class _StoryBottomEmojiButtonState extends State<StoryBottomEmojiButton> {

  String selectedEmoji = Emojis.emojis[2]['data'];
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
         // color: Colors.blue
        ),
        child: InkWell(
          overlayColor: MaterialStateColor.resolveWith((states) => Colors.transparent),
          child: Text(selectedEmoji, textAlign: TextAlign.center, style: TextStyle(fontSize: 30, color: selected ? Colors.red : Colors.grey),),
          onDoubleTap: (){
            setState(() {
             if(selected){
               selected = false;
               selectedEmoji = Emojis.emojis[2]['data'];
             }else{
               selected = true;
               selectedEmoji = Emojis.emojis[2]['data'];
             }

            });
          },
          onLongPress: () {
            showModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context, builder: (context) {
              return Container(
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(220),
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: Emojis.emojis.map(
                          (e) =>
                              InkWell(
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 500),
                                      child: Text(e['data'], textAlign: TextAlign.center, style: TextStyle(fontSize: 30, color: Colors.red),
                                      )
                                  ),
                                onTap: () {
                                    setState(() {
                                      selectedEmoji = e['data'];
                                      selected = true;
                                      Get.back();
                                    });
                                },
                              )
                  ).toList(),
                ),
              );
            },);
          },
        ),
      )
    );
  }
}
