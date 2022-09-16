import 'package:flutter/material.dart';
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/widgets/custom_text.dart';
import 'package:tambola_frontend/widgets/gradient_text.dart';

class WinningCard extends StatelessWidget {
  const WinningCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          height: size.height * 0.6,
          width: 359,
          decoration: BoxDecoration(
              gradient: blueGradient,
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 191, 191, 191),
                    offset: Offset(8, 8),
                    spreadRadius: 8,
                    blurRadius: 8)
              ]),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Image(
                  image: AssetImage('assets/images/winning_icon.png'),
                ),
                CoustomGradientText(
                  textAlign: TextAlign.center,
                  text: "CONGRATULATIONS YOU WON WINTYPE",
                  gradient: metallicGradient,
                  style: CustomTextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: 'Inter'),
                ),
                SizedBox(
                  height: 10,
                ),
                CoustomGradientText(
                  text: '500',
                  gradient: metallicGradient,
                  style: CustomTextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      fontFamily: 'Inter'),
                ),
                SizedBox(
                  height: 10,
                ),
                CoustomGradientText(
                  textAlign: TextAlign.center,
                  text: 'YOUR REWARD WILL BE ADDED IN YOUR WALLET',
                  gradient: metallicGradient,
                  style: CustomTextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Inter'),
                ),
                SizedBox(
                  height: 10,
                ),
              ]),
        ),
      ),
    );
  }
}
