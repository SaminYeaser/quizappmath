import 'package:flutter/material.dart';
import 'package:quizappmath/constants.dart';
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
                Container(
                  width: double.infinity,
                  height: 35,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF3F4768), width: 3),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Stack(
                    children: [
                      LayoutBuilder(
                        builder: (context, constraints) => Container(
                          width: constraints.maxWidth * .5,
                          decoration: BoxDecoration(
                              gradient: kPrimaryGradient,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      Positioned.fill(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: kDefaultPadding / 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('18 Sec'),
                              WebsafeSvg.asset("assets/icons/clock.svg")
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
