import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    required this.onPressed,
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: Theme.of(context).elevatedButtonTheme.style,
        child: Text(
          text,
        ),
      ),
    );
  }
}
