import 'package:flutter/material.dart';
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/constants/new_gradints.dart';
import 'package:tambola_frontend/screens/SelectRoom/widgets/coustom_button_text.dart';
import 'package:tambola_frontend/widgets/header.dart';

import '../Game/tambola_board.dart';

class WaitingRoomScreen extends StatelessWidget {
  const WaitingRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          HeaderWidget(
            gradient1: whitegradient,
            gradient2: whitegradient,
            gradient3: whitegradient,
            gradient4: whitegradient,
            gradient5: greenLinear,
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TambolaBoard()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 35),
                height: size.height * 0.65,
                width: 359,
                decoration: BoxDecoration(
                    gradient: newblue2liner,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 191, 191, 191),
                          offset: Offset(8, 8),
                          spreadRadius: 8,
                          blurRadius: 8)
                    ]),
                child: Column(children: [
                  const CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/profile_photo.png'),
                    radius: 50,
                  ),
                  SizedBox(height: 30),
                  NewCoustomText(
                      text: "User Name",
                      fontsize: 28,
                      fontWeight: FontWeight.bold,
                      color: metallicGradient.colors),
                  SizedBox(height: 5),
                  NewCoustomText(
                      text: "UserID",
                      fontsize: 18,
                      fontWeight: FontWeight.bold,
                      color: newredliner.colors),
                  SizedBox(height: 35),
                  NewCoustomText(
                      text: "Wating Time",
                      fontsize: 36,
                      fontWeight: FontWeight.bold,
                      color: metallicGradient.colors),
                  SizedBox(height: 35),
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(
                      child: NewCoustomText(
                          text: "04:23  ",
                          fontsize: 40,
                          fontWeight: FontWeight.bold,
                          color: newfireliner.colors),
                    ),
                    WidgetSpan(
                      child: NewCoustomText(
                          text: "Minutes",
                          fontsize: 40,
                          fontWeight: FontWeight.w700,
                          color: metallicGradient.colors),
                    ),
                  ])),
                  const SizedBox(
                    height: 35,
                  ),
                  NewCoustomText(
                      text: "Get Ready",
                      fontsize: 28,
                      fontWeight: FontWeight.bold,
                      color: metallicGradient.colors),
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
