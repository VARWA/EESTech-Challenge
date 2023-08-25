import 'package:beamer/beamer.dart';
import 'package:eestech_challenge_app/config/router/education_beam_location.dart';
import 'package:eestech_challenge_app/config/router/events_beam_location.dart';
import 'package:eestech_challenge_app/config/router/profile_beam_location.dart';
import 'package:eestech_challenge_app/config/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  late int currentIndex;

  final routerDelegates = [
    BeamerDelegate(
      initialPath: '/events',
      locationBuilder: (routeInformation, _) {
        if (routeInformation.location!.contains('events')) {
          return EventsLocation(routeInformation);
        }
        return NotFound(path: routeInformation.location!);
      },
    ),
    BeamerDelegate(
      initialPath: '/education',
      locationBuilder: (routeInformation, _) {
        if (routeInformation.location!.contains('education')) {
          return EducationLocation(routeInformation);
        }
        return NotFound(path: routeInformation.location!);
      },
    ),
    BeamerDelegate(
      initialPath: '/profile',
      locationBuilder: (routeInformation, _) {
        if (routeInformation.location!.contains('profile')) {
          return ProfileLocation(routeInformation);
        }
        return NotFound(path: routeInformation.location!);
      },
    ),
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final uriString = Beamer.of(context).configuration.location!;
    if (uriString.contains('/events')) {
      currentIndex = 0;
    } else if (uriString.contains('/education')) {
      currentIndex = 1;
    } else if (uriString.contains('/profile')) {
      currentIndex = 2;
    } else {
      // Beamer.of(context).beamToReplacementNamed('/unknown');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: [
          Beamer(
            routerDelegate: routerDelegates[0],
          ),
          Beamer(
            routerDelegate: routerDelegates[1],
          ),
          Beamer(
            routerDelegate: routerDelegates[2],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: MyColors.surfaceColor,
        unselectedItemColor: MyColors.blueOnLogo,
        selectedItemColor: MyColors.redOnLogo,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm_outlined),
            label: 'События',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "База знаний",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Профиль",
          ),
        ],
        onTap: (index) {
          if (index != currentIndex) {
            setState(() => currentIndex = index);
            routerDelegates[currentIndex].update(rebuild: false);
          }
        },
      ),
    );
  }
}
