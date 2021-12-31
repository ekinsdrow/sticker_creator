import 'package:flutter/material.dart';

class HexColor {
  static Color? fromHex(
    String hex,
  ) {
    if (hex.startsWith('#')) {
      hex = hex.substring(1);
    }

    if (hex.length != 6) {
      return null;
    } else {
      try {
        hex = 'FF' + hex;
        final i = int.parse(hex, radix: 16);
        return Color(i);
      } on Exception {
        return null;
      }
    }
  }
}
