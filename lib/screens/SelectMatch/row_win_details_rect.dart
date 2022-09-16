import 'package:flutter/material.dart';
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/widgets/custom_text.dart';
import 'package:tambola_frontend/widgets/gradient_text.dart';

class RowWinDetailsRect extends StatelessWidget {
  final String winType;
  final String winCointCount;
  const RowWinDetailsRect(
      {required this.winType, required this.winCointCount, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      height: 25,
      width: 103,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: greenLinear,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Text(
          winType,
          style: const TextStyle(color: Colors.white, fontSize: 10),
        ),
        RichText(
            text: TextSpan(children: [
          WidgetSpan(
              child: CoustomGradientText(
            text: winCointCount,
            gradient: fireLinearGradient,
            style: const CustomTextStyle(
                fontSize: 14, fontWeight: FontWeight.w600),
          ))
        ])),
      ]),
    );
  }
}
