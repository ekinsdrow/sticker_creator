import 'package:flutter/material.dart';
import 'package:sticker_creator/generated/l10n.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          S.of(context).sticker_app,
        ),
      ),
    );
  }
}
