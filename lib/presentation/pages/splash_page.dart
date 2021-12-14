import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sticker_creator/generated/l10n.dart';
import 'package:sticker_creator/internal/router/router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            //TODO:remove
            AutoRouter.of(context).replaceAll(
              [
                const HomeRoute(),
              ],
            );
          },
          child: Text(
            S.of(context).sticker_app,
          ),
        ),
      ),
    );
  }
}
