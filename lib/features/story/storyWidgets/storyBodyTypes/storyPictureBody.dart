import 'package:app_co/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryPictureBody extends StatelessWidget {
  final String imgUrl;
  const StoryPictureBody({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(
          imgUrl
      ),
      //fit: BoxFit.contain,
      width: Get.width,
    );
  }
}
