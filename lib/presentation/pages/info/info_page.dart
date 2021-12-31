import 'package:flutter/material.dart';
import 'package:sticker_creator/generated/l10n.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).info,
        ),
      ),
    );
  }
}
