import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sticker_creator/generated/l10n.dart';
import 'package:sticker_creator/presentation/data/paddings.dart';
import 'package:sticker_creator/presentation/widgets/button.dart';

class StickerPage extends StatelessWidget {
  const StickerPage({
    required final this.image,
    Key? key,
  }) : super(key: key);

  final File image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).add_sticker),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(Paddings.small),
          child: Column(
            children: [
              Expanded(
                child: Container(),
              ),
              Container(
                width: double.infinity,
                child: Button(
                  onPressed: () {
                    //TODO: return image
                    context.router.pop();
                  },
                  text: S.of(context).save,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
