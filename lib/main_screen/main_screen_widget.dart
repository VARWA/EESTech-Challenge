import 'dart:developer';

import 'package:eestech_challenge_app/events_screen/events_main_screen_widget.dart';
import 'package:eestech_challenge_app/user_info/user_info_widget.dart';
import 'package:flutter/material.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedTab,
        children: [
          EventsMainScreen(),
          // Text("Задачи"),
          Text("Теория"),
          UserInfoWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm_outlined), label: 'События'),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.task_alt_outlined), label: "Задачи"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Теория"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: "Профиль"),
        ],
        onTap: onSelectedTab,
      ),
    );
  }
}
