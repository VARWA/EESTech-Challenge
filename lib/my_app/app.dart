import 'package:beamer/beamer.dart';
import 'package:eestech_challenge_app/config/theme/light_theme.dart';
import 'package:eestech_challenge_app/ui/main_screen/main_screen_widget.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final routerDelegate = BeamerDelegate(
    initialPath: '/events',
    locationBuilder: RoutesLocationBuilder(
      routes: {
        '*': (context, state, data) => const MainScreenWidget(),
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
      backButtonDispatcher: BeamerBackButtonDispatcher(
        delegate: routerDelegate,
      ),
      theme: lightTheme,
      darkTheme: ThemeData.dark(),
    );
  }
}
