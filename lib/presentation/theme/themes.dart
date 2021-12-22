import 'package:flutter/material.dart';
import 'package:sticker_creator/presentation/data/border_radiuses.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF2B3033),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(BorderRadiuses.medium),
        ),
      ),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xFF2B3033),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: Color(0xFF2B3033),
        fontSize: 36,
      ),
      bodyText1: TextStyle(
        color: Color(0xFF2B3033),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Color(0xFF2B3033),
      ),
      titleTextStyle: TextStyle(
        color: Color(0xFF2B3033),
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 1,
          color: Color(0xFF2B3033),
        ),
        borderRadius: BorderRadius.circular(
          BorderRadiuses.medium,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 1,
          color: Color(0xFF2B3033),
        ),
        borderRadius: BorderRadius.circular(
          BorderRadiuses.medium,
        ),
      ),
    ),
  );
}
