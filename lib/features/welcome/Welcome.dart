import 'package:app_co/manager/getXControllers/stringRoutes.dart';
import 'package:app_co/utils/images.dart';
import 'package:app_co/utils/styles.dart';
import 'package:flutter/material.dart';
import '../createAccount/CreateAccount.dart';
import '../createAccount/Custom_Button.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'appÇō',
                  style: MyStyles.style40,
                ),
                SvgPicture.asset(
                  MySvg.messaging,
                  height: 100,
                ),
              ],
            ),
            Custom_Button(
                onPressed: () {
                  Get.offNamed(AppStringRoutes.createAccount);
                },
                data: 'CREATE'),
          ],
        ),
      ),
    );
  }
}
