import 'package:flutter/material.dart';
import 'package:sticker_creator/internal/utils/hex_color.dart';
import 'package:sticker_creator/presentation/data/border_radiuses.dart';

class Themes {
  static ThemeData get lightTheme {
    final _black = HexColor.fromHex('#2B3033') ?? Colors.black;

    return ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: _black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BorderRadiuses.medium),
          ),
        ),
      ),
      iconTheme: IconThemeData(
        color: _black,
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
          color: _black,
          fontSize: 36,
        ),
        bodyText1: TextStyle(
          color: _black,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: _black,
        ),
        titleTextStyle: TextStyle(
          color: _black,
        ),
      ),
      scaffoldBackgroundColor: Colors.white,
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: _black,
          ),
          borderRadius: BorderRadius.circular(
            BorderRadiuses.medium,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: _black,
          ),
          borderRadius: BorderRadius.circular(
            BorderRadiuses.medium,
          ),
        ),
      ),
    );
  }
}
