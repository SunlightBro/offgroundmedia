import 'package:flutter/material.dart';

final offgroundTheme = ThemeData.light().copyWith(
  appBarTheme: const AppBarTheme(
    color: Colors.white,
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.black87,
        fontSize: 32.0,
      ),
    ),
  ),
  textTheme: TextTheme(
    headline1: GoogleFonts.bebasNeue(fontSize: 73, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    headline2: GoogleFonts.bebasNeue(fontSize: 45, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    headline3: GoogleFonts.bebasNeue(fontSize: 36, fontWeight: FontWeight.w400),
    headline4: GoogleFonts.bebasNeue(fontSize: 26, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    headline5: GoogleFonts.bebasNeue(fontSize: 18, fontWeight: FontWeight.w400),
    headline6: GoogleFonts.bebasNeue(fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    subtitle1: GoogleFonts.bebasNeue(fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.15),
    subtitle2: GoogleFonts.bebasNeue(fontSize: 11, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyText1: GoogleFonts.nunito(fontSize: 17, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyText2: GoogleFonts.nunito(fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    button: GoogleFonts.nunito(fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 1.25),
    caption: GoogleFonts.nunito(fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    overline: GoogleFonts.nunito(fontSize: 11, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  ),
);
