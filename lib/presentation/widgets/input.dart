import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({
    required this.controller,
    this.hintText,
    Key? key,
  }) : super(key: key);

  final TextEditingController controller;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: const Color(0xFF2B3033),
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }
}
