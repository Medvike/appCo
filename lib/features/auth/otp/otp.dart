import 'package:app_co/features/auth/otp/textfield_otp.dart';
import 'package:app_co/utils/images.dart';
import 'package:app_co/utils/styles.dart';
import 'package:flutter/material.dart';
import '../createAccount/Custom_Button.dart';
import '../register/register.dart';
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
                  Image.asset(MySvg.otp,height: 200,),
                  Text('Please Check Your Phone',style: MyStyles.style23,),
                  Text('We have sent you a Verification Code by Sms',style: MyStyles.style18,),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextField_Otp(controller:c1,first: true,last: false,),
                      TextField_Otp(controller:c2 ,first: false,last: false,),
                      TextField_Otp(controller:c3 ,first: false,last: false,),
                      TextField_Otp(controller:c4 ,first: false,last: true,),

                    ],
                  ),
                  SizedBox(height: 50,),
                  Custom_Button(
                      onPressed:  () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder:(context)=> Regester(),
                          ),
                        );

                      }, data: 'Confirm'
                  ),
                  Row(
                    children: [
                      Text('Dont Receive any Code?',style: MyStyles.style15,),
                      TextButton(
                          onPressed: (){

                          },
                          child: Text('Resend',style: TextStyle(color: Colors.black),)),
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