import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:get/get.dart';
import 'package:quizappmath/models/quiz.dart';

import 'package:quizappmath/pages/scorePage.dart';

import '../../constants.dart';

class Questions extends StatefulWidget {
  final TeXViewRenderingEngine renderingEngine;

  Questions({this.renderingEngine = const TeXViewRenderingEngine.katex()});

  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  int currentQuizIndex = 0;
  String? selectedOptionId;
  bool isWrong = false;
  int numberOfCorrectAnswer = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      children: <Widget>[
        Text.rich(
          TextSpan(
              text: "Quiz ${currentQuizIndex + 1}",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: kSecondaryColor),
              children: [
                TextSpan(
                  text: '/${quizList.length}',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: kSecondaryColor),
                )
              ]),
        ),
        SizedBox(
          height: 20,
        ),
        TeXView(
          renderingEngine: widget.renderingEngine,
          child: TeXViewColumn(children: [
            TeXViewDocument(
              quizList[currentQuizIndex].statement ?? '',
              style: TeXViewStyle(
                  textAlign: TeXViewTextAlign.Center,
                  borderRadius: TeXViewBorderRadius.all(1)),
            ),
            TeXViewGroup(
                children: quizList[currentQuizIndex]
                    .options!
                    .map((QuizOption option) {
                  return TeXViewGroupItem(
                    rippleEffect: false,
                    id: option.id,
                    child: TeXViewDocument(
                      option.option,
                      style: TeXViewStyle(
                        padding: TeXViewPadding.all(10),
                      ),
                    ),
                  );
                }).toList(),
                selectedItemStyle: TeXViewStyle(
                  borderRadius: TeXViewBorderRadius.all(10),
                  border: TeXViewBorder.all(
                    TeXViewBorderDecoration(
                        borderWidth: 3, borderColor: Colors.green[900]),
                  ),
                  margin: TeXViewMargin.all(10),
                ),
                normalItemStyle: TeXViewStyle(
                  margin: TeXViewMargin.all(10),
                ),
                onTap: (id) {
                  this.selectedOptionId = id;
                  setState(() {
                    isWrong = false;
                  });
                })
          ]),
          style: TeXViewStyle(
            margin: TeXViewMargin.all(0),
            padding: TeXViewPadding.all(10),
            borderRadius: TeXViewBorderRadius.all(0),
            border: TeXViewBorder.all(
              TeXViewBorderDecoration(
                  borderColor: Colors.blueGrey,
                  borderStyle: TeXViewBorderStyle.Solid,
                  borderWidth: 5),
            ),
            backgroundColor: Colors.transparent,
          ),
        ),
        if (isWrong)
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Wrong answer!!! Please choose a correct option.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.red,
              ),
            ),
          ),
        SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (currentQuizIndex > 0) {
                    selectedOptionId = null;
                    currentQuizIndex--;
                  }
                });
              },
              child: Text("Previous"),
              style: ElevatedButton.styleFrom(
                primary: buttonColor,
                fixedSize: Size(100, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (selectedOptionId ==
                      quizList[currentQuizIndex].correctOptionId) {
                    selectedOptionId = null;
                    print('Current index->1: ${currentQuizIndex}');
                    if (currentQuizIndex != quizList.length) {
                      currentQuizIndex++;
                      numberOfCorrectAnswer = numberOfCorrectAnswer + 1;
                      QuestionAnswer.numOfCorrectAnswer = numberOfCorrectAnswer;

                      print('length: ${quizList.length}');
                      print('Current index: ${currentQuizIndex}');
                      print(
                          'Number Of Correct answer: ${numberOfCorrectAnswer}');
                      if (currentQuizIndex == quizList.length) {
                        Get.to(ScorePage());
                      }
                    }
                  } else {
                    isWrong = true;
                  }
                });
              },
              child: Text("Next"),
              style: ElevatedButton.styleFrom(
                primary: buttonColor,
                fixedSize: Size(100, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
