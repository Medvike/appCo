import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/colors.dart';
import '../../../utils/icons.dart';
import '../../../utils/styles.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: TextField(
        controller: controller,
        cursorColor: Colors.black,
        style: MyStyles.style20.copyWith(
          fontWeight: FontWeight.w600,
          color: Colors.white,
          letterSpacing: 1.2,
        ),
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 30),
            child: SvgPicture.asset(
              MyIcons.search,
              color: Colors.white,
              width: 30,
            ),
          ),
          fillColor: MyColors.green,
          filled: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 34, vertical: 14),
          hintText: 'Search',
          hintStyle: MyStyles.style20.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            letterSpacing: 1.2,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(24),
          ),
        ),
      ),
    );
  }
}
