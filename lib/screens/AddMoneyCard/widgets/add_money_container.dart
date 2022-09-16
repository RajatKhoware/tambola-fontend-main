// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/constants/new_gradints.dart';
import 'package:tambola_frontend/screens/SelectRoom/widgets/coustom_button_text.dart';

class AddMoneyContainer extends StatelessWidget {
  final String coins;
  final String amount;
  final String coins1;
  final String amount1;
  final double padding;
  final double padding1;
  const AddMoneyContainer({
    Key? key,
    required this.coins,
    required this.amount,
    required this.coins1,
    required this.amount1,
    required this.padding,
    required this.padding1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Row(
        children: [
          Container(
            width: 99.w,
            height: 101.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                gradient: blueGradient2,
                boxShadow: [boxShadowWallet]),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: padding.w, top: 7.h),
                    child: Row(
                      children: [
                        NewCoustomText(
                          text: coins,
                          fontsize: 22.sp,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          color: newfireliner.colors,
                          shadowoffset: Offset(0.0, 5.0),
                          shawdowcolor: Color.fromARGB(29, 0, 0, 0),
                          shawdowradius: 6.r,
                        ),
                        Image.asset(
                          "assets/images/coinss.png",
                          width: 30.w,
                          height: 38.h,
                        ),
                      ],
                    ),
                  ),
                  NewCoustomText(
                    text: "For",
                    fontsize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: newgreygradient.colors,
                    shadowoffset: Offset(0.0, 5.0),
                    shawdowcolor: Color.fromARGB(29, 0, 0, 0),
                    shawdowradius: 6.r,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.h, bottom: 6.h),
                    child: Container(
                      width: 77.w,
                      height: 21.h,
                      decoration: BoxDecoration(
                        color: fromCssColor("#FFFFFF").withOpacity(.50),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Center(
                        child: NewCoustomText(
                          text: "₹$amount",
                          fontsize: 13.sp,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          color: newgreygradient.colors,
                          shadowoffset: Offset(0.0, 5.0),
                          shawdowcolor: Color.fromARGB(29, 0, 0, 0),
                          shawdowradius: 6.r,
                        ),
                      ),
                    ),
                  )
                ]),
          ),
          SizedBox(width: 61.w),
          Container(
            width: 99.w,
            height: 101.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                gradient: blueGradient2,
                boxShadow: [boxShadowWallet]),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: padding1.w, top: 7.h),
                    child: Row(
                      children: [
                        NewCoustomText(
                          text: coins1,
                          fontsize: 22.sp,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          color: newfireliner.colors,
                          shadowoffset: Offset(0.0, 5.0),
                          shawdowcolor: Color.fromARGB(29, 0, 0, 0),
                          shawdowradius: 6.r,
                        ),
                        Image.asset(
                          "assets/images/coinss.png",
                          width: 30.w,
                          height: 38.h,
                        ),
                      ],
                    ),
                  ),
                  NewCoustomText(
                    text: "For",
                    fontsize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: newgreygradient.colors,
                    shadowoffset: Offset(0.0, 5.0),
                    shawdowcolor: Color.fromARGB(29, 0, 0, 0),
                    shawdowradius: 6.r,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.h, bottom: 6.h),
                    child: Container(
                      width: 77.w,
                      height: 21.h,
                      decoration: BoxDecoration(
                        color: fromCssColor("#FFFFFF").withOpacity(.50),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Center(
                        child: NewCoustomText(
                          text: "₹$amount1",
                          fontsize: 13.sp,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          color: newgreygradient.colors,
                          shadowoffset: Offset(0.0, 5.0),
                          shawdowcolor: Color.fromARGB(29, 0, 0, 0),
                          shawdowradius: 6.r,
                        ),
                      ),
                    ),
                  )
                ]),
          ),
        ],
      ),
      designSize: const Size(428, 926),
    );
  }
}
