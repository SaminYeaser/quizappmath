import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:quizappmath/controllers/questionController.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../constants.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF3F4768), width: 3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: GetBuilder<QuestionController>(
          init: QuestionController(),
          builder: (controller) {
            // print(controller.animation!.value);
            return Stack(
              children: [
                LayoutBuilder(
                  builder: (context, constraints) => Container(
                    width:  constraints.maxWidth *controller.animation!.value,
                    decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                // WebsafeSvg.asset("assets/icons/clock.svg"),
                Positioned.fill(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            '${(controller.animation!.value * 60).round()} Sec',
                            style: Theme.of(context).textTheme.subtitle1),
                        WebsafeSvg.asset("assets/icons/clock.svg")
                      ],
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
