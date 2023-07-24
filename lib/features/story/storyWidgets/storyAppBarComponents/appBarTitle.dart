import 'package:app_co/utils/colors.dart';
import 'package:app_co/utils/styles.dart';
import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  final String story;

  const AppBarTitle({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.account_circle, color: MyColors.green, size: 50,
      ),
      title: Text(story == "me" ? "Me" : story, style: MyStyles.style20.copyWith(color: Colors.white),),
      subtitle: Text("Just now", style: MyStyles.style15.copyWith(color: Colors.white),),
    );
  }
}
