import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:quizappmath/models/quiz.dart';
import 'package:quizappmath/pages/components/body.dart';
import 'package:quizappmath/pages/myhomepage.dart';
import 'package:quizappmath/pages/quiz.dart';
import 'package:quizappmath/pages/scorePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

