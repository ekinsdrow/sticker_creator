import 'package:flutter/material.dart';
import 'package:sticker_creator/generated/l10n.dart';
import 'package:sticker_creator/presentation/data/paddings.dart';
import 'package:sticker_creator/presentation/widgets/animated_icon_button.dart';
import 'package:url_launcher/url_launcher.dart';

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
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            bottom: Paddings.small,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(
                  Paddings.small,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      S.of(context).developer,
                    ),
                    Row(
                      children: [
                        AnimatedIconButton(
                          onPressed: () {
                            launch('mailto:ekinsdrow@gmail.com');
                          },
                          iconData: Icons.email,
                        ),
                        AnimatedIconButton(
                          onPressed: () {
                            launch('https://t.me/ekinsdrow');
                          },
                          iconData: Icons.message,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () => launch('https://github.com/ekinsdrow/sticker_creator'),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(
                    Paddings.small,
                  ),
                  color: Colors.transparent,
                  child: Text(
                    S.of(context).repo,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
