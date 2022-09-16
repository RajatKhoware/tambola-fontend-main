import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:tambola_frontend/constants/new_gradints.dart';

import '../AccountScreen/widgets/account_header.dart';
import '../SelectRoom/widgets/coustom_button_text.dart';

class WinnerList extends StatelessWidget {
  const WinnerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        body: Column(
          children: [
            AccountScreenHeader(),
            SizedBox(height: 10.h),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0.w.h),
                child: Container(
                  width: 360.w,
                  height: 681.h,
                  decoration: BoxDecoration(
                      color: fromCssColor("#00647B"),
                      borderRadius: BorderRadius.circular(30.r)),
                  child: Column(children: [
                    SizedBox(height: 20.h),
                    NewCoustomText(
                        text: "List of Winners",
                        fontsize: 26.sp,
                        fontWeight: FontWeight.bold,
                        color: newgreygradient.colors),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(10.0.w.h),
                        child: Container(
                          width: 339.w,
                          height: 601.h,
                          decoration: BoxDecoration(
                              color: fromCssColor("#FFFFFF"),
                              borderRadius: BorderRadius.circular(30.r)),
                          child: ListView(
                              padding: EdgeInsets.only(top: 15.h),
                              children: [
                                ListofWinner(
                                  profileImg: "assets/images/face.png",
                                  prizeImg: 'assets/images/Winner.png',
                                ),
                                ListofWinners(
                                  profileImg: "assets/images/face.png",
                                  prizeImg: 'assets/images/gold.png',
                                ),
                                ListofWinners(
                                  profileImg: "assets/images/face.png",
                                  prizeImg: 'assets/images/silver.png',
                                ),
                                ListofWinners(
                                  profileImg: "assets/images/face.png",
                                  prizeImg: 'assets/images/silver.png',
                                ),
                                ListofWinners(
                                  profileImg: "assets/images/face.png",
                                  prizeImg: 'assets/images/bronze.png',
                                ),
                                ListofWinners(
                                  profileImg: "assets/images/face.png",
                                  prizeImg: 'assets/images/winning_icon.png',
                                ),
                              ]),
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
      designSize: const Size(428, 926),
    );
  }
}

class ListofWinner extends StatelessWidget {
  final String profileImg;
  final String? prizeImg;

  const ListofWinner({
    Key? key,
    required this.profileImg,
    this.prizeImg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Container(
        width: 303.w,
        height: 75.h,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 9.h, bottom: 10.h, left: 3.w),
              child: CircleAvatar(
                radius: 32.r,
                backgroundImage: AssetImage(profileImg),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 9.w, bottom: 5.h, top: 7.h),
              child: SizedBox(
                width: 105.w,
                height: 70.h,
                child: Column(
                  children: [
                    NewCoustomText(
                      text: "User Name",
                      fontsize: 17.sp,
                      fontWeight: FontWeight.bold,
                      color: newblacklinergradient.colors,
                      shadowoffset: Offset(0.0, 5.0),
                      shawdowcolor: Color.fromARGB(43, 0, 0, 0),
                      shawdowradius: 6.r,
                    ),
                    SizedBox(height: 2.h),
                    NewCoustomText(
                      text: "User ID               ",
                      fontsize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: newtamatoredliner.colors,
                      shadowoffset: Offset(0.0, 5.0),
                      shawdowcolor: Color.fromARGB(55, 0, 0, 0),
                      shawdowradius: 6.r,
                    ),
                    SizedBox(height: 3.h),
                    Container(
                      width: 104.w,
                      height: 17.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        gradient: newblueliner,
                        border: Border.all(color: Colors.white, width: 1.0.w),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 4),
                              blurRadius: 4.0.r),
                        ],
                      ),
                      child: Center(
                        child: NewCoustomText(
                            text: "Congratulate",
                            fontsize: 8.sp,
                            fontWeight: FontWeight.bold,
                            color: newgreygradient.colors),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Image.asset(
              'assets/images/winner_logo.png',
              width: 65.w,
              height: 41.h,
            ),
            Image.asset(
              prizeImg.toString(),
              width: 33.w,
              height: 45.h,
            )
          ],
        ),
      ),
    );
  }
}

class ListofWinners extends StatelessWidget {
  final String profileImg;
  final String? prizeImg;

  const ListofWinners({
    Key? key,
    required this.profileImg,
    this.prizeImg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Container(
        width: 303.w,
        height: 75.h,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 9.h, bottom: 10.h, left: 3.w),
              child: CircleAvatar(
                radius: 32.r,
                backgroundImage: AssetImage(profileImg),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 9.w, bottom: 5.h, top: 7.h),
              child: SizedBox(
                width: 105.w,
                height: 70.h,
                child: Column(
                  children: [
                    NewCoustomText(
                      text: "User Name",
                      fontsize: 17.sp,
                      fontWeight: FontWeight.bold,
                      color: newblacklinergradient.colors,
                      shadowoffset: Offset(0.0, 5.0),
                      shawdowcolor: Color.fromARGB(43, 0, 0, 0),
                      shawdowradius: 6.r,
                    ),
                    SizedBox(height: 2.h),
                    NewCoustomText(
                      text: "User ID               ",
                      fontsize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: newtamatoredliner.colors,
                      shadowoffset: Offset(0.0, 5.0),
                      shawdowcolor: Color.fromARGB(55, 0, 0, 0),
                      shawdowradius: 6.r,
                    ),
                    SizedBox(height: 3.h),
                    Container(
                      width: 104.w,
                      height: 17.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        gradient: newblueliner,
                        border: Border.all(color: Colors.white, width: 1.0.w),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 4),
                              blurRadius: 4.0.r),
                        ],
                      ),
                      child: Center(
                        child: NewCoustomText(
                            text: "Congratulate",
                            fontsize: 8.sp,
                            fontWeight: FontWeight.bold,
                            color: newgreygradient.colors),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 50.w),
            Image.asset(
              prizeImg.toString(),
              width: 42.w,
              height: 48.h,
            )
          ],
        ),
      ),
    );
  }
}
