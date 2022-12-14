import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(color: Colors.red, fontSize: 28),
        textAlign: TextAlign.center,
      ),
      margin: EdgeInsets.symmetric(vertical: 20),
    );
  }
}
