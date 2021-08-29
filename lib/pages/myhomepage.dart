import 'package:flutter/material.dart';
import 'package:quizappmath/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2,),
                  Text(
                    "Solve these math quiz",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text("Enter your informations bellow"),
                  Spacer(),
                  TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF1C2341),
                        hintText: "Full Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ))),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(kDefaultPadding * .75),
                      decoration: BoxDecoration(
                          gradient: kPrimaryGradient,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Text(
                        "Lets start the Quiz",
                        style: Theme.of(context)
                            .textTheme
                            .button!
                            .copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                  Spacer(flex: 2,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}