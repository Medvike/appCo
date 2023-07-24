import 'package:flutter/material.dart';

class ReplyTextField extends StatelessWidget {
  const ReplyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 5,
      child: TextField(
        autofocus: true,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(15),
            hintText: "Write a reply",
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))
            )
        ),
      ),
    );
  }
}
