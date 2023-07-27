import 'package:app_co/features/otp/textfield_otp.dart';
import 'package:app_co/manager/getXControllers/stringRoutes.dart';
import 'package:app_co/utils/images.dart';
import 'package:app_co/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../createAccount/Custom_Button.dart';
import 'controller.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    MyImages.otp,
                    height: 200,
                  ),
                 const Text('Please Check Your Phone',style: MyStyles.style23,),
                  const Text('We have sent you a Verification Code by Sms',style: MyStyles.style18,),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextField_Otp(controller:c1,first: true,last: false,),
                      TextField_Otp(controller:c2 ,first: false,last: false,),
                      TextField_Otp(controller:c3 ,first: false,last: false,),
                      TextField_Otp(controller:c4 ,first: false,last: true,),

                    ],
                  ),
                  const SizedBox(height: 50,),
                  Custom_Button(
                      onPressed:  () {
                       Get.offNamed(AppStringRoutes.register);

                      }, data: 'Confirm'
                  ),
                  Row(
                    children: [
                      const Text('Dont Receive any Code?',style: MyStyles.style15,),
                      TextButton(
                          onPressed: (){

                          },
                          child:const Text('Resend',style: TextStyle(color: Colors.black),)),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}