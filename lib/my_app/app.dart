import 'package:eestech_challenge_app/ui/main_screen/main_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ui/auth_screen/auth_screen_widget.dart';
import '../ui/events_screen/widgets/event_screen_info.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/auth_screen/': (context) => const AuthWidget(),
        '/main_screen/': (context) => const MainScreenWidget(),
        '/main_screen/event_info': (context) {
          final index = ModalRoute.of(context)?.settings.arguments;
          return EventScreenInfo(index: index);
        }
      },
      initialRoute: '/auth_screen/',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff232935), //t
        textTheme: GoogleFonts.interTextTheme(),
        colorSchemeSeed: Colors.green,
        useMaterial3: true,
      ),
      home: Container(color: Colors.red),
    );
  }
}
