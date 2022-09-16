import 'package:flutter/material.dart';
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/widgets/custom_text.dart';
import 'package:tambola_frontend/widgets/gradient_text.dart';
import 'package:tambola_frontend/widgets/heading_text.dart';

class TambolaWinDetailsRect extends StatelessWidget {
  final int winCoinCount;
  const TambolaWinDetailsRect({required this.winCoinCount, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 101,
      decoration: BoxDecoration(
        gradient: redLinear,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(children: [
        const HeadingText(
          fontSize: 21,
        ),
        RichText(
            text: TextSpan(children: [
          const WidgetSpan(
              child: Image(
            height: 30,
            width: 30,
            image: AssetImage('assets/images/coin-small.png'),
          )),
          WidgetSpan(
            child: CoustomGradientText(
              text: winCoinCount.toString(),
              gradient: fireLinearGradient,
              style: const CustomTextStyle(
                  fontWeight: FontWeight.bold, fontSize: 25),
            ),
          )
        ])),
      ]),
    );
  }
}
