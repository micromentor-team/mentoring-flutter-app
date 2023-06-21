import 'package:flutter/material.dart';

class Dialogs {
  Dialogs._private();
  static void showSnackBar(BuildContext context, String message,
      {SnackBarAction? action}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 30),
        action: action,
      ),
    );
  }
}
