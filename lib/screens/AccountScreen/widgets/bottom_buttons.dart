import 'package:flutter/material.dart';
import 'package:tambola_frontend/screens/WalletCard/wallet_card.dart';
import 'package:tambola_frontend/widgets/reuseable_account_containers.dart';

class CircularButtons extends StatelessWidget {
  const CircularButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 428,
      height: 114,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: SizedBox(
          width: 358,
          height: 74.44,
          child: Row(children: [
            ReuseAbleCircularButtons(
                ontap: () {
                  showDialog(
                      useSafeArea: false,
                      context: context,
                      builder: (context) => NewWallet());
                },
                icon: const Icon(Icons.settings)),
            const SizedBox(width: 24),
            ReuseAbleCircularButtons(
                ontap: () {}, icon: const Icon(Icons.verified_outlined)),
            const SizedBox(width: 24),
            ReuseAbleCircularButtons(
                ontap: () {}, icon: const Icon(Icons.notes)),
            const SizedBox(width: 23),
            ReuseAbleCircularButtons(
                ontap: () {}, icon: const Icon(Icons.account_box)),
          ]),
        ),
      ),
    );
  }
}
