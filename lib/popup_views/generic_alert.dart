import 'package:flutter/material.dart';

Future<bool> showPopup(
  BuildContext context,
  Text title,
  Text message,
  List<TextButton> buttons,
) {
  return showDialog<bool>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: title,
        content: message,
        actions: buttons,
      );
    },
  ).then((value) => value ?? false);
}
