import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sticker_creator/generated/l10n.dart';
import 'package:sticker_creator/internal/router/router.dart';
import 'package:sticker_creator/presentation/data/paddings.dart';
import 'package:sticker_creator/presentation/theme/themes.dart';
import 'package:sticker_creator/presentation/widgets/animated_icon_button.dart';
import 'package:sticker_creator/presentation/widgets/button.dart';

class PackPage extends StatelessWidget {
  const PackPage({Key? key}) : super(key: key);

  void _showDialog(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        actions: [
          Container(
            color: Themes.whiteColor,
            child: CupertinoActionSheetAction(
              onPressed: () {
                context.router.pop();

                //TODO: open file
                context.router.push(StickerRoute(
                  image: File(''),
                ));
              },
              child: Text(
                S.of(context).gallery,
                style: TextStyle(
                  color: Themes.blackColor,
                ),
              ),
            ),
          ),
          Container(
            color: Themes.whiteColor,
            child: CupertinoActionSheetAction(
              onPressed: () {
                context.router.pop();

                //TODO: open file
                context.router.push(StickerRoute(
                  image: File(''),
                ));
              },
              child: Text(
                S.of(context).camera,
                style: TextStyle(
                  color: Themes.blackColor,
                ),
              ),
            ),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            context.router.pop();
          },
          child: Text(
            S.of(context).cancel,
            style: TextStyle(
              color: Themes.redColor,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //TODO: pack name
        title: const Text('Pack'),
        actions: [
          AnimatedIconButton(
            onPressed: () {
              //TODO: edit
            },
            iconData: Icons.edit,
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(
            Paddings.small,
          ),
          child: Column(
            children: [
              Expanded(
                child: Container(),
              ),
              Container(
                width: double.infinity,
                child: Button(
                  onPressed: () => _showDialog(context),
                  text: S.of(context).add_sticker,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
