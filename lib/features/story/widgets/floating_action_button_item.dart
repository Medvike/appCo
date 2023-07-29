import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/colors.dart';

class FloatingActionButtonItem extends StatelessWidget {
  const FloatingActionButtonItem({
    super.key,
    required this.onPressed,
    required this.text,
    required this.iconData,
  });
  final GestureTapCallback onPressed;
  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: const ButtonStyle().copyWith(
        backgroundColor: const MaterialStatePropertyAll(MyColors.lightPurple),
      ),
      onPressed: onPressed,
      icon: Icon(
        iconData,
        size: Get.width * .08,
        color: Colors.black87,
      ),
      label: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          color: Color.fromARGB(255, 61, 0, 166),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
