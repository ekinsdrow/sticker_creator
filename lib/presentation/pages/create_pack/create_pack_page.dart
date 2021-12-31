import 'package:flutter/material.dart';
import 'package:sticker_creator/generated/l10n.dart';
import 'package:sticker_creator/internal/router/router.dart';
import 'package:sticker_creator/presentation/data/paddings.dart';
import 'package:sticker_creator/presentation/widgets/button.dart';
import 'package:sticker_creator/presentation/widgets/input.dart';
import 'package:auto_route/auto_route.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).create_sticker_pack,
        ),
      ),
      body: SafeArea(
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
                    context.router.replace(
                      const PackRoute(),
                    );
                  },
                  text: S.of(context).next,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
