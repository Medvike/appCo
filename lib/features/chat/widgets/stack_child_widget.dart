import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.function,
    required this.color,
  });

  final String icon;
  final GestureTapCallback function;
  final Color color;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: function,
      child: Container(
        width: width * .134,
        height: width * .134,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(
            icon,
            // ignore: deprecated_member_use
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
