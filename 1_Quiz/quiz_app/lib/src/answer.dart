import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  // final Function()? answerHandler;
  final VoidCallback answerHandler;

  Answer(this.answerText, this.answerHandler);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: answerHandler, child: Text(answerText));
  }
}
