import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(top: height * .012, bottom: height * .03),
      width: width * .5,
      height: height * .008,
      color: const Color(0xFFD9D9D9),
    );
  }
}
