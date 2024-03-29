import 'package:eestech_challenge_app/config/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: MyColors.blueOnLogo,
  ),
  brightness: Brightness.light,
  textTheme: GoogleFonts.interTextTheme(),
  cardTheme: const CardTheme(
    color: Color(0xffe6e6e6),
    surfaceTintColor: Color(0xffe6e6e6),
  ),
  scaffoldBackgroundColor: const Color(0xff232935),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.red,
  ),
);
