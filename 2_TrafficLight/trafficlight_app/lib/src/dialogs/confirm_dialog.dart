import 'package:flutter/material.dart';

class ConfirmDialog extends StatelessWidget {
  final String? title;
  final String? content;
  final int buttonCnt;
  final List<String>? buttonTexts;

  /// If click the button, it will return its text of the button.
  ///
  /// You could use it when you code 'Future... then...'
  const ConfirmDialog(
      {Key? key,
      this.title,
      this.content,
      required this.buttonCnt,
      this.buttonTexts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (content == null) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        title: Text(title ?? ''),
        actions: _getListButton(context),
      );
    } else {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        title: Text(title ?? ''),
        content: Text(content ?? ''),
        actions: _getListButton(context),
      );
    }
  }

  List<Widget> _getListButton(BuildContext context) {
    List<Widget> buttons = [];

    for (var iCnt = 0; iCnt < buttonCnt; ++iCnt) {
      buttons.add(TextButton(
          onPressed: () {
            Navigator.of(context).pop(buttonTexts![iCnt]);
          },
          child: Text(buttonTexts![iCnt])));
    }

    return buttons;
  }
}
