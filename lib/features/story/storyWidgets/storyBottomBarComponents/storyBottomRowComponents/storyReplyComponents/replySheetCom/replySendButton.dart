import 'package:app_co/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReplySendButton extends StatelessWidget {
  const ReplySendButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: SizedBox(
        height: 50,
        child: MaterialButton(
          onPressed: (){
            Get.back();
          },
          child: Icon(Icons.send),
          color: MyColors.green,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50))
          ),
        ),
      ),
    );
  }
}
