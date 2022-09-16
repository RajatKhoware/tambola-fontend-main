import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:tambola_frontend/screens/NewSelectMatch/Widgets/room_cards.dart';

import '../../constants/gradients.dart';
import '../../widgets/header.dart';

class SelectMatchRoom extends StatelessWidget {
  const SelectMatchRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: metallicGradient),
          child: Column(children: [
            HeaderWidget(
              gradient1: whitegradient,
              gradient2: greenLinear,
              gradient3: whitegradient,
              gradient4: whitegradient,
              gradient5: whitegradient,
            ),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 218.15.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    gradient: blueLiner2Gradient),
                child: Row(
                  children: [
                    SizedBox(width: 15.w),
                    GradientText(
                      "Room of 10 ",
                      style: TextStyle(
                        fontSize: 25.0.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      gradientType: GradientType.linear,
                      gradientDirection: GradientDirection.ttb,
                      radius: .5.r,
                      colors: [
                        fromCssColor('#FFFFFF'),
                        fromCssColor('#CACACA'),
                      ],
                    ),
                    SizedBox(width: 2.w),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.info_outline,
                          size: 25.sp,
                          color: Color.fromARGB(255, 252, 165, 67),
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                children: [
                  RoomCard(
                    activeuser: 20,
                    entryfee: 5,
                  ),
                  SizedBox(height: 10),
                  RoomCard(
                    activeuser: 20,
                    entryfee: 5,
                  ),
                  SizedBox(height: 10),
                  RoomCard(
                    activeuser: 20,
                    entryfee: 5,
                  ),
                  SizedBox(height: 10),
                  RoomCard(
                    activeuser: 20,
                    entryfee: 5,
                  ),
                  SizedBox(height: 10),
                  RoomCard(
                    activeuser: 20,
                    entryfee: 5,
                  ),
                  SizedBox(height: 10),
                  RoomCard(
                    activeuser: 20,
                    entryfee: 5,
                  ),
                  SizedBox(height: 10),
                  RoomCard(
                    activeuser: 20,
                    entryfee: 5,
                  ),
                  SizedBox(height: 10),
                  RoomCard(
                    activeuser: 20,
                    entryfee: 5,
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ]),
        ),
      ),
      designSize: const Size(428, 915),
    );
  }
}
