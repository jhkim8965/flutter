// ignore_for_file: prefer_const_constructors, prefer_final_fields
import 'package:flutter/material.dart';
import 'src/result.dart';
import 'src/quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var _questions = [
    {
      "question": "가장 좋아하는 색깔은 무엇인가요?",
      "answer": ["빨강", "검정", "초록"]
    },
    {
      "question": "가장 좋아하는 과일은 무엇인가요?",
      "answer": ["사과", "수박", "딸기"]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("This is title area."),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: _questionIndex < _questions.length
          ? Quiz(_questions, _questionIndex, _answerQuestion)
          : Result(),
    ));
  }

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }
}
