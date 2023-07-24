import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StackChildWidget extends StatelessWidget {
  const StackChildWidget({
    super.key,
    required this.icon,
    required this.function,
    required this.color,
    this.position,
  });

  final String icon;
  final GestureTapCallback function;
  final Color color;
  final double? position;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Positioned(
      right: position,
      child: GestureDetector(
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
      ),
    );
  }
}
