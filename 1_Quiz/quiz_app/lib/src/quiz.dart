import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerHandler;

  const Quiz(this.questions, this.questionIndex, this.answerHandler);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionIndex]["question"] as String),
      ...(questions[questionIndex]["answer"] as List<String>).map((answer) {
        return Answer(answer, answerHandler);
      }).toList(),
    ]);
  }
}
