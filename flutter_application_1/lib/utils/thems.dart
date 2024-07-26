import 'package:flutter/material.dart';

// 0xff00BE84
// 0xFFff4667
const Color mainColor = Color.fromARGB(255, 180, 131, 174);
const Color darkGreyClr = Color(0xffff121212);
const Color pinkClr = Color.fromARGB(255, 155, 39, 77);
const Color kColor1 = Color(0xff685959);
const Color kColor2 = Color(0xffADA79B);
const Color kColor3 = Color(0xffA5947F);
const Color kColor4 = Color(0xffa73bb71);
const Color kColor5 = Color(0xff6D454D);
const Color kColor6 = Color(0xFFE0123B);
const Color kColor7 = Color(0xFF6A39DB);
const Color kColor8 = Color(0xFFF180CF);
const Color darkSettings = Color(0xff6132e4);
const Color accountSettings = Color(0xff73bc65);
const Color logOutSettings = Color(0xff5f95ef);
const Color notiSettings = Color(0xffdf5862);
const Color languageSettings = Color.fromARGB(255, 182, 23, 92);

class ThemesApp {
  static final light = ThemeData(
    primaryColor: mainColor,
    backgroundColor: Colors.white,
    brightness: Brightness.light,
  );

  static final dark = ThemeData(
    primaryColor: darkGreyClr,
    backgroundColor: darkGreyClr,
    brightness: Brightness.dark,
  );
}
