import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sticker_creator/generated/l10n.dart';
import 'package:sticker_creator/presentation/data/border_radiuses.dart';
import 'package:sticker_creator/presentation/data/paddings.dart';
import 'package:sticker_creator/presentation/widgets/button.dart';

class StickerPage extends StatelessWidget {
  const StickerPage({
    required final this.image,
    required final this.filename,
    Key? key,
  }) : super(key: key);

  final File image;
  final String filename;

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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    BorderRadiuses.small,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Image.file(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Paddings.small,
              ),
              SizedBox(
                width: double.infinity,
                child: Button(
                  onPressed: () {
                    //TODO: save image to table and memory
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
