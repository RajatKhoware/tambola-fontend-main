// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/screens/AccountScreen/account_screen.dart';
import 'package:tambola_frontend/screens/LeaderBoard/leaderboard_screen.dart';
import 'package:tambola_frontend/screens/WalletCard/wallet_card.dart';
import 'package:tambola_frontend/screens/WinnerList/winner_list.dart';
import '../../screens/PlayRoom/select_room_screen.dart';

class NewNavBar extends StatefulWidget {
  const NewNavBar({Key? key}) : super(key: key);

  @override
  State<NewNavBar> createState() => _NewNavBarState();
}

class _NewNavBarState extends State<NewNavBar> {
  int index = 0;
  final screens = [
    SelectRoomScreen(),
    NewWallet(),
    WinnerList(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: Container(
        height: 94,
        decoration: BoxDecoration(gradient: blueLiner2Gradient),
        child: NavigationBar(
            backgroundColor: Colors.transparent,
            height: 94,
            selectedIndex: index,
            animationDuration: Duration(seconds: 15),
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            destinations: [
              NewNavBarItems(
                  icon: (Icons.play_circle), selectedIcon: (Icons.play_circle)),
              NewNavBarItems(
                  icon: (Icons.wallet), selectedIcon: (Icons.wallet)),
              NewNavBarItems(
                  icon: (Icons.analytics), selectedIcon: (Icons.analytics)),
              NewNavBarItems(
                  icon: (Icons.account_box), selectedIcon: (Icons.account_box))
            ]),
      ),
    );
  }
}

class NewNavBarItems extends StatelessWidget {
  final IconData icon;
  final IconData selectedIcon;
  const NewNavBarItems({
    Key? key,
    required this.icon,
    required this.selectedIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
      child: Container(
        width: 63,
        height: 74,
        decoration: BoxDecoration(
            gradient: blackLinear, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: NavigationDestination(
            icon: Icon(
              icon,
              size: 50,
              color: Color.fromARGB(255, 199, 192, 192),
            ),
            label: "",
            selectedIcon: Container(
                decoration: BoxDecoration(),
                child: Icon(
                  selectedIcon,
                  size: 50,
                  color: Color.fromARGB(255, 255, 166, 0),
                )),
          ),
        ),
      ),
    );
  }
}
