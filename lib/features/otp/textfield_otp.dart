import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextField_Otp extends StatelessWidget {
 const TextField_Otp({Key? key,required this.first,required this.last,required this.controller,}) : super(key: key);
  final bool first;
  final bool last;
 final TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color:const Color(0xffA0C49E),
          width: 1.5,

        ),
        borderRadius: BorderRadius.circular(18),
        color:Colors.grey.withOpacity(0.1),
      ),
      child: TextField(
        onChanged:((value){
          if (value.isNotEmpty && last==false){
            FocusScope.of(context).nextFocus();
          }else if(value.isEmpty && first==false){
            FocusScope.of(context).previousFocus();
          }

        }),

        keyboardType: TextInputType.number,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        textAlign: TextAlign.center,
        style:const TextStyle(fontSize: 25),
        decoration: InputDecoration(
            border: InputBorder.none,
            constraints: BoxConstraints(

              maxWidth: MediaQuery.sizeOf(context).width/7,
              minHeight: MediaQuery.sizeOf(context).width/6,

            )),

      ),
    );
  }
}