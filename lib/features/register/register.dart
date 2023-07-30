import 'package:app_co/utils/images.dart';
import 'package:app_co/utils/styles.dart';
import 'package:flutter/material.dart';

import 'MaterialButton.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                MyImages.computer,
                height: 300,
              ),
              const Text(
                'This number is already registed',
                style: MyStyles.style23,
              ),
              const Text(
                'Do you want to restore the backup?',
                style: MyStyles.style18,
              ),
              const SizedBox(height: 60),
              Material_Button(),
            ],
          ),
        ),
      ),
    );
  }
}
