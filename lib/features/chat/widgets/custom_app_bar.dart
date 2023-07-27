// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:app_co/features/chat/widgets/stack_child_widget.dart';
import '../../../utils/colors.dart';
import '../../../utils/icons.dart';
import '../../../utils/widgets/profile_picture_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.userImage,
    required this.userName,
  }) : super(key: key);

  final String userImage, userName;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: width * .06, vertical: height * .04),
      child: Row(
        children: [
          ProfilePictureWidget(imageUrl: userImage, size: .165),
          SizedBox(width: width * .045),
          Text(
            userName,
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          SizedBox(
            width: width * .4,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                CustomIconButton(
                  function: () {},
                  icon: MyIcons.settings,
                  color: MyColors.green,
                ),
                Positioned(
                  right: width * .108,
                  child: CustomIconButton(
                    function: () {},
                    icon: MyIcons.profile,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
