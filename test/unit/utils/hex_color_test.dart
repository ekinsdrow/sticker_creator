import 'package:flutter/material.dart';
import 'package:sticker_creator/internal/utils/hex_color.dart';
import 'package:test/test.dart';

class HexColorTest {
  static void hexColorTest = test(
    'HexColor class test',
    () {
      expect(
        HexColor.fromHex('#huy'),
        null,
      );

      expect(
        HexColor.fromHex('#FFFFFF'),
        Colors.white,
      );

      expect(
        HexColor.fromHex('#000000'),
        Colors.black,
      );

      expect(
        HexColor.fromHex('#333333'),
        const Color(0xFF333333),
      );
    },
  );
}
