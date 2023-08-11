import 'package:eestech_challenge_app/config/theme/theme_colors.dart';
import 'package:eestech_challenge_app/ui/education_screen/education_main_screen_widget.dart';
import 'package:flutter/material.dart';

import '../events_screen/events_main_screen_widget.dart';
import '../user_info/user_info_widget.dart';

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
        children: const [
          EventsMainScreen(),
          // Text("Задачи"),
          MainListOfEducationWidget(),
          UserInfoWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        unselectedItemColor: MyColors.blueOnLogo,
        selectedItemColor: MyColors.redOnLogo,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm_outlined), label: 'События'),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.task_alt_outlined), label: "Задачи"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Теория"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: "Профиль"),
        ],
        backgroundColor: const Color.fromRGBO(230, 230, 230, 1),
        onTap: onSelectedTab,
      ),
    );
  }
}
