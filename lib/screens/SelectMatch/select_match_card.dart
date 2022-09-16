import 'package:flutter/material.dart';
import 'package:tambola_frontend/constants/colors.dart';
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/screens/AddMoney/add_money_page.dart';
import 'package:tambola_frontend/screens/SelectMatch/row_win_details_rect.dart';
import 'package:tambola_frontend/screens/SelectMatch/tambola_win_details_rect.dart';
import 'package:tambola_frontend/widgets/custom_text.dart';
import 'package:tambola_frontend/widgets/customized_button.dart';
import 'package:tambola_frontend/widgets/gradient_text.dart';

class SelectMatchCard extends StatelessWidget {
  final String activePlayerCount;
  final int entryFee;
  final int rowCoinWins;
  final int tambolaCoinWins;
  const SelectMatchCard({
    Key? key,
    required this.activePlayerCount,
    required this.entryFee,
    required this.rowCoinWins,
    required this.tambolaCoinWins,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    //final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    //final double itemWidth = size.width / 2;
    return Container(
      padding: const EdgeInsets.all(8.0),
      //height: 180,
      width: 358,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: metallicGradient,
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'ACTIVE PLAYERS',
              style: CustomTextStyle(
                  fontWeight: FontWeight.w600, textColor: Colors.grey),
            ),
            Text(
              activePlayerCount,
              style: const CustomTextStyle(
                  fontWeight: FontWeight.w700, textColor: Colors.red),
            ),
            const Text(
              'ENTRY FEE',
              style: CustomTextStyle(
                  fontWeight: FontWeight.w600, textColor: Colors.black),
            ),
            RichText(
                text: TextSpan(children: [
              const WidgetSpan(
                  child: Image(
                image: AssetImage('assets/images/coin.png'),
              )),
              WidgetSpan(
                  child: CoustomGradientText(
                text: entryFee.toString(),
                gradient: fireLinearGradient,
                style: const CustomTextStyle(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ))
            ])),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const CoustomGradientText(
          text: 'WINNING PRIZE',
          gradient: blueLiner2Gradient,
          style: CustomTextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'Inter'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                RowWinDetailsRect(
                    winType: "FIRST 5", winCointCount: rowCoinWins.toString()),
                const SizedBox(
                  height: 5,
                ),
                RowWinDetailsRect(
                    winType: "ROW 1", winCointCount: rowCoinWins.toString()),
              ],
            ),
            Column(
              children: [
                RowWinDetailsRect(
                    winType: "FIRST 5", winCointCount: rowCoinWins.toString()),
                const SizedBox(
                  height: 5,
                ),
                RowWinDetailsRect(
                    winType: "ROW 1", winCointCount: rowCoinWins.toString()),
              ],
            ),
            Column(
              children: [TambolaWinDetailsRect(winCoinCount: tambolaCoinWins)],
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomizedButton(
              horizontalPadding: 0,
              buttonBackgroundGradient: blueLiner2Gradient,
              buttonGradient: metallicGradient,
              buttonText: "Invite",
              handleClick: () {},
              textColor: primaryColor,
              fontSize: 17,
            ),
            CustomizedButton(
              buttonBackgroundGradient: blueLiner2Gradient,
              buttonGradient: fireLinearGradient,
              buttonText: "Play",
              horizontalPadding: 2,
              handleClick: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddMoneyScreen()));
              },
              textColor: primaryColor,
              fontSize: 17,
            ),
            CustomizedButton(
              buttonBackgroundGradient: blueLiner2Gradient,
              buttonGradient: metallicGradient,
              buttonText: "Buy 1 Ticket",
              handleClick: () {},
              textColor: primaryColor,
              horizontalPadding: 2,
              fontSize: 17,
            )
          ],
        )
      ]),
    );
  }
}
