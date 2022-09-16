import 'package:flutter/material.dart';
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/screens/SelectMatch/select_match_card.dart';
import 'package:tambola_frontend/widgets/gradient_text.dart';
import 'package:tambola_frontend/widgets/header.dart';
import 'package:tambola_frontend/widgets/navbar/navbar_widget.dart';

class SelectMatchScreen extends StatelessWidget {
  const SelectMatchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(
              gradient1: whitegradient,
              gradient2: greenLinear,
              gradient3: whitegradient,
              gradient4: whitegradient,
              gradient5: whitegradient,
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      gradient: blueLiner2Gradient,
                      borderRadius: BorderRadius.circular(16)),
                  child: const CoustomGradientText(
                    gradient: metallicGradient,
                    text: "Room of roomcount",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            Expanded(
              child: ListView(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
                  shrinkWrap: true,
                  children: const [
                    SizedBox(
                      height: 20,
                    ),
                    SelectMatchCard(
                        activePlayerCount: "26/100",
                        entryFee: 5,
                        rowCoinWins: 40,
                        tambolaCoinWins: 150),
                    SizedBox(
                      height: 20,
                    ),
                    SelectMatchCard(
                        activePlayerCount: "44/100",
                        entryFee: 10,
                        rowCoinWins: 75,
                        tambolaCoinWins: 300),
                    SizedBox(
                      height: 20,
                    ),
                    SelectMatchCard(
                        activePlayerCount: "26/100",
                        entryFee: 85,
                        rowCoinWins: 150,
                        tambolaCoinWins: 600),
                    SizedBox(
                      height: 20,
                    ),
                  ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBarWidget(),
    );
  }
}
