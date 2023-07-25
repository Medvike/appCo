import 'package:app_co/utils/images.dart';
import 'package:app_co/utils/styles.dart';
import 'package:flutter/material.dart';
import '../auth/createAccount/CreateAccount.dart';
import '../auth/createAccount/Custom_Button.dart';

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
                Image.asset(
                  MySvg.messaging,
                  height: 100,
                ),
              ],
            ),
            Custom_Button(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Create_Account(),
                    ),
                  );
                },
                data: 'CREATE'
            ),
          ],
        ),
      ),
    );
  }
}
