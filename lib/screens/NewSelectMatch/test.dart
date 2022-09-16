import 'package:flutter/material.dart';
import 'package:tambola_frontend/screens/NewSelectMatch/Widgets/room_cards.dart';

class test extends StatelessWidget {
  const test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: RoomCard(activeuser: 26, roomtype: 10, entryfee: 5)),
    );
  }
}
