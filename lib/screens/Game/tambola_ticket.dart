import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:tambola_frontend/constants/colors.dart';
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/screens/Game/random_ticket.dart';
import 'package:tambola_frontend/screens/Game/tambola_board.dart';

class TambolaTicket extends StatefulWidget {
  final ValueChanged<ClaimType> checkWin;
  final bool isClickable;
  const TambolaTicket(
      {required this.checkWin, this.isClickable = false, Key? key})
      : super(key: key);

  @override
  State<TambolaTicket> createState() => _TambolaTicketState();
}

//user's ticket
class _TambolaTicketState extends State<TambolaTicket> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Container(
        height: 254.h,
        width: 392.w,
        padding: EdgeInsets.only(left: 6.w, top: 8.h, right: 6.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.r),
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 2),
                blurRadius: 6,
                color: Color.fromARGB(172, 1, 20, 31))
          ],
          border: Border.all(width: 5.w, color: kWalletCardGradient2),
        ),
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 0,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
            ),
            child: Table(
              border: TableBorder.symmetric(
                  inside: BorderSide(width: 0.65.w),
                  outside: BorderSide(
                    width: 0.5.w,
                  )),
              children: getTicket(),
            ),
          ),
          SizedBox(
            height: 7.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              tambolaButton("First 5", ClaimType.firstFive, 75, 36, '', 10),
              tambolaButton("BOTTOM ROW", ClaimType.bottomRow, 75, 36, '', 10),
              tambolaButton("MIDDLE ROW", ClaimType.middleRow, 75, 36, '', 10),
              tambolaButton("TOP ROW", ClaimType.topRow, 75, 36, '', 10)
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          tambolaButton(
              "Tambola", ClaimType.tambola, 182, 36, 'IrishGrover', 15),
        ]),
      ),
      designSize: const Size(254, 392),
    );
  }

  GestureDetector tambolaButton(
    String text,
    ClaimType type,
    double width,
    double height,
    String fontfamily,
    double fontsize,
  ) {
    return GestureDetector(
        onTap: () => widget.checkWin(type),
        child: ResueAbleButton(
          text: text,
          width: width,
          height: height,
          fontfamily: fontfamily,
          fontsize: fontsize,
        ));
  }
}

class ResueAbleButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final String? fontfamily;
  final double? fontsize;
  const ResueAbleButton({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
    this.fontfamily,
    this.fontsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: blackLinear,
        boxShadow: const [
          BoxShadow(
              color: Color.fromARGB(172, 47, 52, 58),
              offset: Offset(0.0, 2.0),
              blurRadius: 2.0,
              spreadRadius: 1.0),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontsize,
            fontFamily: fontfamily,
          ),
        ),
      ),
    );
  }
}

//todo: get the radom generated ticket from the backend instead of RandomTicket
List<TableRow> getTicket() {
  int id = 0;
  List<TableRow> tambolaRows = [];
  for (var i = 0; i < 3; i++) {
    List<Widget> row = [];
    for (var j = 0; j < 9; j++, id++) {
      var number = randomTicket['entries']![i][j];
      if (number != 0) {
        row.add(TicketItem(id: id, rowNumber: i + 1, number: number));
      } else {
        row.add(TicketItem(
          id: id,
          rowNumber: i + 1,
          number: "",
          isBlank: true,
        ));
      }
    }
    tambolaRows.add(TableRow(children: row));
  }
  return tambolaRows;
}

List<TableRow> getTicket2() {
  int id = 0;
  List<TableRow> tambolaRows = [];
  for (var i = 0; i < 3; i++) {
    List<Widget> row = [];
    for (var j = 0; j < 9; j++, id++) {
      var number = randomTicket['entries']![i][j];
      if (number != 0) {
        row.add(TicketItem(id: id, rowNumber: i + 1, number: number));
      } else {
        row.add(TicketItem(
          id: id,
          rowNumber: i + 1,
          number: "",
          isBlank: true,
        ));
      }
    }
    tambolaRows.add(TableRow(children: row));
  }
  return tambolaRows;
}

//claim buttons
class TambolaButton extends StatelessWidget {
  final String text;
  final bool isClaimed;
  final ClaimType type;
  final VoidCallback checkWin;
  const TambolaButton(
      {required this.text,
      this.isClaimed = false,
      required this.type,
      required this.checkWin,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        checkWin();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), gradient: blackLinear),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 10),
        ),
      ),
    );
  }
}
