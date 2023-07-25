import 'package:app_co/utils/images.dart';
import 'package:app_co/utils/styles.dart';
import 'package:flutter/material.dart';

import 'MaterialButton.dart';


class Regester extends StatelessWidget {
  const Regester({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(MySvg.computer,height: 300,),
              Text('This number is already registed',style: MyStyles.style23,),
              Text('Do you want to restore the backup?',style: MyStyles.style18,),
              SizedBox(height: 60,),
              Material_Button(),
            ],
          ),
        ),
      ),
    );
  }
}