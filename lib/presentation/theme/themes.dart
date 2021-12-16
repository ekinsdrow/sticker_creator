import 'package:flutter/material.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF2B3033),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xFF2B3033),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: const Color(0xFF2B3033),
        fontSize: 36,
      ),
    ),
  );
}
