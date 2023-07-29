// ignore_for_file: deprecated_member_use

import 'package:app_co/features/chat/user_chats_screen.dart';
import 'package:app_co/features/story/status_screen.dart';
import 'package:app_co/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({super.key});

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(MyIcons.chat, color: Colors.blueGrey),
            label: 'Chats',
            activeIcon: SvgPicture.asset(MyIcons.chat),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(MyIcons.archive, color: Colors.blueGrey),
            label: 'Archive',
            activeIcon: SvgPicture.asset(MyIcons.archive, color: Colors.black),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(MyIcons.call, color: Colors.blueGrey),
            label: 'Call',
            activeIcon: SvgPicture.asset(MyIcons.call),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(MyIcons.video, color: Colors.blueGrey),
            label: 'Video',
            activeIcon: SvgPicture.asset(MyIcons.archive, color: Colors.black),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(MyIcons.group, color: Colors.blueGrey),
            label: 'Groups',
            activeIcon: SvgPicture.asset(MyIcons.chat),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(MyIcons.status, color: Colors.blueGrey),
            label: 'Statues',
            activeIcon: SvgPicture.asset(MyIcons.archive, color: Colors.black),
          ),
        ],
        onTap: changeIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blueGrey,
        selectedFontSize: 16,
      ),
      body: screens[currentIndex],
    );
  }

  void changeIndex(newIndex) {
    setState(() {
      currentIndex = newIndex;
    });
  }
}

var screens = const [
  UserChatsScreen(),
  Center(child: Text('Archive')),
  Center(child: Text('Call')),
  Center(child: Text('Video')),
  Center(child: Text('Groups')),
  StatusScreen(),
];
