import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sticker_creator/di/create_pack_scope.dart';
import 'package:sticker_creator/domain/create_pack_bloc/create_pack_bloc.dart';
import 'package:sticker_creator/generated/l10n.dart';
import 'package:sticker_creator/internal/router/router.dart';
import 'package:sticker_creator/presentation/data/paddings.dart';
import 'package:sticker_creator/presentation/widgets/button.dart';
import 'package:sticker_creator/presentation/widgets/input.dart';
import 'package:auto_route/auto_route.dart';
import 'package:sticker_creator/presentation/widgets/show_error_bottom.dart';

class CreatePackPage extends StatefulWidget {
  const CreatePackPage({Key? key}) : super(key: key);

  @override
  State<CreatePackPage> createState() => _CreatePackPageState();
}

class _CreatePackPageState extends State<CreatePackPage> {
  final _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CreatePackScope(
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                S.of(context).create_sticker_pack,
              ),
            ),
            body: BlocListener<CreatePackBloc, CreatePackState>(
              listener: (context, state) => state.whenOrNull(
                error: (error) => showErrorBottomSheet(
                  error: error,
                  context: context,
                ),
                success: (pack) {
                  context.router.replace(
                    PackRoute(
                      pack: pack,
                    ),
                  );
                },
              ),
              child: SafeArea(
                child: Container(
                  padding: EdgeInsets.all(
                    Paddings.small,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Input(
                            controller: _nameController,
                            hintText: S.of(context).sticker_pack_name,
                          ),
                          //TODO:choose type(tg/whatsapp)
                        ],
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Button(
                          onPressed: () {
                            BlocProvider.of<CreatePackBloc>(context).add(
                              CreatePackEvent.create(name: _nameController.text),
                            );
                          },
                          text: S.of(context).next,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
