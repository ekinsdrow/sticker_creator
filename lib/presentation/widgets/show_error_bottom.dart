import 'package:flutter/material.dart';

void showErrorBottomSheet({
  required String error,
  required BuildContext context,
}) {
  showBottomSheet(
    context: context,
    builder: (context) => Text(
      error,
    ),
  );
}
