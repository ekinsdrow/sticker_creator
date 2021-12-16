import 'package:flutter/material.dart';
import 'package:sticker_creator/generated/l10n.dart';
import 'package:sticker_creator/internal/router/router.dart';
import 'package:sticker_creator/presentation/data/border_radiuses.dart';
import 'package:sticker_creator/presentation/data/paddings.dart';
import 'package:sticker_creator/presentation/widgets/animated_icon_button.dart';
import 'package:sticker_creator/presentation/widgets/button.dart';
import 'package:auto_route/auto_route.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(
            Paddings.small,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          S.of(context).your_packs,
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        AnimatedIconButton(
                          onPressed: () {
                            //TODO:info
                          },
                          iconData: Icons.info,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Paddings.small,
                    ),
                    Expanded(
                      child: GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1,
                          crossAxisSpacing: Paddings.small,
                          mainAxisSpacing: Paddings.small,
                        ),
                        itemBuilder: (context, index) => const _StickerPackItem(),
                        itemCount: 33,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Paddings.small,
              ),
              SizedBox(
                width: double.infinity,
                child: Button(
                  text: S.of(context).create_sticker_pack,
                  onPressed: () {
                    context.router.push(
                      const CreatePackRoute(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StickerPackItem extends StatelessWidget {
  const _StickerPackItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey,
      borderRadius: BorderRadius.circular(
        BorderRadiuses.small,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(
          BorderRadiuses.small,
        ),
        onTap: () {
          //TODO; open pack
          context.router.push(
            const PackRoute(),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              BorderRadiuses.small,
            ),
          ),
        ),
      ),
    );
  }
}
