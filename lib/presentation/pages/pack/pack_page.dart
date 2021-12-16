import 'package:flutter/material.dart';
import 'package:sticker_creator/presentation/widgets/animated_icon_button.dart';

class PackPage extends StatelessWidget {
  const PackPage({Key? key}) : super(key: key);

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
    );
  }
}
