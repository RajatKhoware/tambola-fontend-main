// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:tambola_frontend/constants/new_gradints.dart';
import 'package:tambola_frontend/screens/SelectRoom/widgets/coustom_button_text.dart';
import '../../NewSelectMatch/select_room.dart';

class SelectRoomReuseableCard extends StatelessWidget {
  final List<Color> colors;
  final String Roomof;
  final Gradient gradient1;
  final String amount1;
  final String amount2;
  const SelectRoomReuseableCard({
    Key? key,
    required this.colors,
    required this.Roomof,
    required this.gradient1,
    required this.amount1,
    required this.amount2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Container(
        height: 261.h,
        width: 368.w,
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
        decoration: BoxDecoration(
            gradient: newmetallicGradient2,
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 66, 66, 66),
                  offset: Offset(0, 6),
                  blurRadius: 4.0.r)
            ],
            borderRadius: BorderRadius.circular(30.r)),
        child: Column(children: [
          SizedBox(
            height: 10.0.h,
          ),
          NewCoustomText(
            text: "Active players:    44411",
            fontsize: 11.sp,
            fontWeight: FontWeight.bold,
            color: colors,
            shadowoffset: Offset(0.0, 4.0),
            shawdowcolor: Color.fromARGB(64, 0, 0, 0),
            shawdowradius: 6.r,
          ),
          SizedBox(
            height: 20.h,
          ),
          NewCoustomText(
            text: "ROOM OF $Roomof",
            fontsize: 22.sp,
            fontWeight: FontWeight.bold,
            color: colors,
            shadowoffset: Offset(0.0, 4.0),
            shawdowcolor: Color.fromARGB(64, 0, 0, 0),
            shawdowradius: 6.r,
          ),
          NewCoustomText(
            text: "WINNING PRIZE",
            fontsize: 25.sp,
            fontWeight: FontWeight.bold,
            color: colors,
            shadowoffset: Offset(0.0, 4.0),
            shawdowcolor: Color.fromARGB(64, 0, 0, 0),
            shawdowradius: 6.r,
          ),
          SizedBox(
            height: 26.h,
          ),
          RichText(
              text: TextSpan(children: [
            WidgetSpan(
                child: Image(
              height: 30.h,
              width: 30.w,
              image: AssetImage('assets/images/coin-small.png'),
            )),
            WidgetSpan(
                child: NewCoustomText(
              text: "$amount1 - ",
              fontsize: 25.sp,
              fontWeight: FontWeight.bold,
              color: colors,
            )),
            WidgetSpan(
                child: Image(
              height: 30.h,
              width: 30.w,
              image: AssetImage('assets/images/coin-small.png'),
            )),
            WidgetSpan(
                child: NewCoustomText(
              text: "$amount2",
              fontsize: 25.sp,
              fontWeight: FontWeight.bold,
              color: colors,
            ))
          ])),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.w),
            child: Container(
              width: 311.w,
              height: 52.h,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SelectMatchRoom()));
                },
                child: CustomButton2(
                  width: 211.w,
                  width2: 180.w,
                  height: 52.h,
                  height2: 40.h,
                  text: "Play Now",
                  color: colors,
                  fontsize: 23.sp,
                  fontWeight: FontWeight.bold,
                  gradient1: gradient1,
                  gradient2: LinearGradient(
                    colors: [
                      fromCssColor("#D9D9D9"),
                      fromCssColor("#FFFFFF"),
                      fromCssColor("#FFFFFF"),
                      fromCssColor("#ABABAB"),
                    ],
                    stops: [0.0, 0.0, 0.65, 2],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  shadowoffset: Offset(0.0, 4.0),
                  shawdowcolor: Color.fromARGB(64, 0, 0, 0),
                  shawdowradius: 6.r,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
