// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_co/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:app_co/features/chat/widgets/stack_child_widget.dart';
import '../../../utils/colors.dart';
import '../../../utils/icons.dart';
import '../../../utils/widgets/profile_picture_widget.dart';

class StatusAppBar extends StatelessWidget {
  const StatusAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: width * .04, vertical: height * .03),
      child: Row(
        children: [
          SizedBox(width: width * .045),
          const Text(
            'Status',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
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
