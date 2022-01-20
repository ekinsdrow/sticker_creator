import 'package:flutter/material.dart';
import 'package:sticker_creator/di/app_scope.dart';
import 'package:sticker_creator/presentation/sticker_app.dart';

void main() {
  runApp(
    AppScope(
      child: StickerApp(),
    ),
  );
}
