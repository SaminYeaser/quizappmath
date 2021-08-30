import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:quizappmath/constants.dart';
import 'package:quizappmath/controllers/questionController.dart';
import 'package:quizappmath/models/quiz.dart';

import 'package:quizappmath/pages/myhomepage.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ScorePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        children: [
          WebsafeSvg.asset(
            "assets/icons/bg.svg",
            fit: BoxFit.fitWidth,
            alignment: Alignment.center,
            width: 1000,
          ),
          Center(
            child: Column(
              children: [
                Spacer(flex: 3,),
                Text(
                  'Score',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: kSecondaryColor),
                ),
                Spacer(),
                Text(
                  '${QuestionAnswer.numOfCorrectAnswer}/${quizList.length}',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: kSecondaryColor),
                ),
                // Text('Finished in ${QuestionController().animationTime!.value * 60} seconds'),
                Spacer(flex: 3,),
                ElevatedButton(
                  onPressed: () => Get.to(MyHomePage()),
                  child: Container(
                    child: Text('< Back to Home',style: TextStyle(color: Colors.black),),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: buttonColor,
                    fixedSize: Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                Spacer(flex: 3,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
