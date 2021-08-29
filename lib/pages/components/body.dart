import 'package:flutter/material.dart';
import 'package:quizappmath/constants.dart';
import 'package:quizappmath/pages/components/progresbar.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebsafeSvg.asset(
          "assets/icons/bg.svg",
          fit: BoxFit.fitWidth,
          alignment: Alignment.center,
          width: 1000,
        ),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                ProgressBar(),

              ],
            ),
          ),
        )
      ],
    );
  }
}
