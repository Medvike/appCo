import 'package:app_co/utils/TestFolderData/storyTestData.dart';
import 'package:app_co/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryBottomShareButton extends StatelessWidget {
  final StoryTestData storyTestData;
  const StoryBottomShareButton({super.key, required this.storyTestData});

  @override
  Widget build(BuildContext context) {
    return
      Expanded(
        child: IconButton(
          onPressed: (){
            storyTestData.hideEffect();
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 220,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.share, size: 40,),
                        Text("Do you want to share this story for you?", style: TextStyle(fontSize: 17)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [

                            TextButton(onPressed: (){
                              print("cancel");
                              Get.back();
                            }, child: Text("Cancel")),
                            SizedBox(width: 12,),
                            ElevatedButton.icon(
                              onPressed: (){
                                print("shared");
                                storyTestData.showEffect("icon", Icons.share);
                                Get.back();
                              },
                              label: Text("Share", style: TextStyle(color: Colors.white),),
                              icon: Icon(Icons.share, color: Colors.white,),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: MyColors.green,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
            );
          },
          icon: Icon(Icons.share_outlined),
          iconSize: 27,
          color: Colors.white,
        ),
      );
  }
}
