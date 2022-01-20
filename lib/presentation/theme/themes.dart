import 'package:flutter/material.dart';
import 'package:sticker_creator/internal/utils/hex_color.dart';
import 'package:sticker_creator/presentation/data/border_radiuses.dart';

class Themes {
  static Color get blackColor => HexColor.fromHex('#2B3033') ?? Colors.black;
  static Color get redColor => HexColor.fromHex('#C62828') ?? Colors.red;
  static Color get whiteColor => Colors.white;

  static ThemeData get lightTheme {
    return ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: blackColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BorderRadiuses.medium),
          ),
        ),
      ),
      iconTheme: IconThemeData(
        color: blackColor,
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
          color: blackColor,
          fontSize: 36,
        ),
        bodyText1: TextStyle(
          color: blackColor,
        ),
      ),
      
      appBarTheme: AppBarTheme(
        backgroundColor: whiteColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: blackColor,
        ),
        titleTextStyle: TextStyle(
          color: blackColor,
        ),
      ),
      scaffoldBackgroundColor: whiteColor,
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: blackColor,
          ),
          borderRadius: BorderRadius.circular(
            BorderRadiuses.medium,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: blackColor,
          ),
          borderRadius: BorderRadius.circular(
            BorderRadiuses.medium,
          ),
        ),
      ),
    );
  }
}
