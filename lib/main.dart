import 'package:flutter/material.dart';
import 'package:quizappmath/models/quiz.dart';
import 'package:quizappmath/pages/myhomepage.dart';
import 'package:quizappmath/pages/quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: QuizScreen(),
    );
  }
}

