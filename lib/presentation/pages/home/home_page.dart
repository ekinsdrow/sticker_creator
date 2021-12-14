import 'package:flutter/material.dart';
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
            children: [
              Expanded(
                child: Container(),
              ),
              const SizedBox(
                width: double.infinity,
                child: Button(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
