import 'package:flutter/material.dart';
import 'package:sticker_creator/generated/l10n.dart';
import 'package:sticker_creator/presentation/data/paddings.dart';
import 'package:sticker_creator/presentation/widgets/button.dart';

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
                    _Header(),
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
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Header extends StatefulWidget {
  const _Header({
    Key? key,
  }) : super(key: key);

  @override
  State<_Header> createState() => _HeaderState();
}

class _HeaderState extends State<_Header> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          S.of(context).your_packs,
          style: Theme.of(context).textTheme.headline1,
        ),
        GestureDetector(
          onLongPress: () {
            if (_animationController.value == 1) {
              _animationController.reverse();
            } else if (_animationController.value == 0) {
              _animationController.forward();
            }
          },
          child: RotationTransition(
            turns: Tween<double>(
              begin: 0,
              end: 1,
            ).animate(_animationController),
            child: IconButton(
              onPressed: () {
                //TODO: open info
              },
              icon: Icon(
                Icons.info,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class _StickerPackItem extends StatelessWidget {
  const _StickerPackItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
