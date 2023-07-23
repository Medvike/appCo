import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'XTeam',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}


// TODO: hi
// TODO: hello
