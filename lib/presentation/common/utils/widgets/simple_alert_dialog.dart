import 'package:flutter/material.dart';
import 'package:movies_app/presentation/common/utils/app_constants.dart';

class SimpleAlertDialog {
  final BuildContext context;
  final String title;
  final String message;
  String okText;
  final VoidCallback onPressedOk;

  SimpleAlertDialog(
      {required this.context,
        this.title = "",
        required this.message,
        this.okText = AppConstants.OK_TEXT,
        required this.onPressedOk});

  show() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              onPressedOk();
            },
            child: Text(okText),
          )
        ],
      ),
    );
  }
}