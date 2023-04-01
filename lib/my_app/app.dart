import 'package:eestech_challenge_app/main_screen/main_screen_widget.dart';
import 'package:eestech_challenge_app/user_info/user_info_widget.dart';
import 'package:flutter/material.dart';

import '../events_screen/event_screen_info.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {'/main_screen/': (context) => MainScreenWidget(),
      '/main_screen/event_info': (context) {
        final index = ModalRoute.of(context)?.settings.arguments;
        return EventScreenInfo(index: index);
      }},
      initialRoute: '/main_screen/',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(color: Colors.red),
    );
  }
}