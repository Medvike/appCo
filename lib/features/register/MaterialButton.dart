import 'package:app_co/manager/getXControllers/stringRoutes.dart';
import 'package:app_co/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Material_Button extends StatelessWidget {
  const Material_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MaterialButton(
          onPressed: () {
            // Navigator.pushReplacement(
            //   context,
            //   MaterialPageRoute(
            //     builder:(context)=> (),
            //   ),
            // );
            Get.toNamed(AppStringRoutes.userChatScreen);
          },
          elevation: 5.0,
          color: Color(0xffA0C49E),
          child: Container(
            height: 60,
            width: 50,
            child: Center(
              child: Text(
                'Yes ',
                style: MyStyles.style22,
              ),
            ),
          ),
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none,
          ),
        ),
        MaterialButton(
          onPressed: () {
            Get.to(AppStringRoutes.mainScreen); //!
          },
          elevation: 5.0,
          color: Color(0xffA0C49E),
          child: Container(
            height: 60,
            width: 50,
            child: Center(
              child: Text(
                'No ',
                style: MyStyles.style22,
              ),
            ),
          ),
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none,
          ),
        ),
      ],
    );
  }
}
