import 'package:flutter/material.dart';
import 'package:sticker_creator/presentation/theme/themes.dart';

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: Themes.blackColor,
    );
  }
}
