import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sticker_creator/data/models/pack.dart';
import 'package:sticker_creator/di/home_scope.dart';
import 'package:sticker_creator/domain/home_bloc/home_bloc.dart';
import 'package:sticker_creator/generated/l10n.dart';
import 'package:sticker_creator/internal/router/router.dart';
import 'package:sticker_creator/presentation/data/border_radiuses.dart';
import 'package:sticker_creator/presentation/data/paddings.dart';
import 'package:sticker_creator/presentation/widgets/animated_icon_button.dart';
import 'package:sticker_creator/presentation/widgets/button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:sticker_creator/presentation/widgets/loader.dart';
import 'package:sticker_creator/presentation/widgets/show_error_bottom.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScope(
      child: Builder(builder: (context) {
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
                                context.router.push(
                                  const InfoRoute(),
                                );
                              },
                              iconData: Icons.info,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Paddings.small,
                        ),
                        BlocConsumer<HomeBloc, HomeState>(
                          listener: (context, state) => state.whenOrNull(
                            error: (error) => showErrorBottomSheet(
                              error: error,
                              context: context,
                            ),
                          ),
                          builder: (context, state) {
                            if (state is Success) {
                              return Expanded(
                                child: GridView.builder(
                                  physics: const BouncingScrollPhysics(),
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 1,
                                    crossAxisSpacing: Paddings.small,
                                    mainAxisSpacing: Paddings.small,
                                  ),
                                  itemBuilder: (context, index) => _StickerPackItem(
                                    pack: state.packs[index],
                                  ),
                                  itemCount: state.packs.length,
                                ),
                              );
                            }

                            return const Expanded(
                              child: Center(
                                child: Loader(),
                              ),
                            );
                          },
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
                      onPressed: () async {
                        await context.router.push(
                          const CreatePackRoute(),
                        );

                        BlocProvider.of<HomeBloc>(context).add(
                          const HomeEvent.fetch(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

class _StickerPackItem extends StatelessWidget {
  const _StickerPackItem({
    Key? key,
    required this.pack,
  }) : super(key: key);

  final Pack pack;

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
          context.router.push(
            PackRoute(pack: pack),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              BorderRadiuses.small,
            ),
          ),
          child: Center(
            child: Text(
              pack.name,
            ),
          ),
        ),
      ),
    );
  }
}
