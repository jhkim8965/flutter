import 'package:flutter/material.dart';
import 'package:meeting_app/test_animation_trans_page.dart';
import 'package:meeting_app/src/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meeting App Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const SingleChildScrollView(child: LoginPage()),
      // home: const OpenContainerTransformDemo(),
    );
  }
}
