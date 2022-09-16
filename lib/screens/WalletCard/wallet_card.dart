// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/constants/new_gradints.dart';
import 'package:tambola_frontend/screens/SelectRoom/widgets/coustom_button_text.dart';

// class WalletScreen extends StatelessWidget {
//   const WalletScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       builder: (context, child) => Scaffold(
//         backgroundColor: Colors.transparent,
//         body: Center(
//           child: Container(
//             width: 359.w,
//             height: 680.h,
//             decoration: BoxDecoration(
//                 gradient: metallicGradient,
//                 borderRadius: BorderRadius.circular(20.r)),
//             child: Column(
//               children: [
//                 SizedBox(height: 20.h),
//                 WallletUserData(),
//                 WalletColunm1(),
//                 SizedBox(height: 25.h),
//                 WalletColunm2(),
//                 SizedBox(height: 30.h),
//                 WalletColunm34(),
//                 SizedBox(height: 30.h),
//                 WalletColunm5(),
//                 SizedBox(height: 25.h),
//                 WalletColunm6(),
//                 SizedBox(height: 25.h)
//               ],
//             ),
//           ),
//         ),
//       ),
//       designSize: const Size(428, 926),
//     );
//   }
// }

class NewWallet extends StatelessWidget {
  const NewWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Material(
        color: Colors.transparent,
        child: Center(
          child: Container(
            width: 359.w,
            height: 680.h,
            decoration: BoxDecoration(
                gradient: metallicGradient,
                borderRadius: BorderRadius.circular(20.r)),
            child: Padding(
              padding: EdgeInsets.only(left: 22.w, top: 20.h, bottom: 20.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // User Details
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 50.r,
                          child: Image.asset(
                            'assets/images/profile_photo.png',
                            width: 120.w,
                            height: 120.h,
                          ),
                        ),
                        SizedBox(width: 55.w),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              NewCoustomText(
                                text: "User Name",
                                fontsize: 22.sp,
                                fontWeight: FontWeight.bold,
                                color: newblacklinergradient.colors,
                                shadowoffset: Offset(4.0, 4.0),
                                shawdowcolor: Color.fromARGB(123, 51, 51, 51),
                                shawdowradius: 10.0.r,
                              ),
                              SizedBox(height: 10.h),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30.w),
                                child: NewCoustomText(
                                  text: "User ID",
                                  fontsize: 13.sp,
                                  fontWeight: FontWeight.bold,
                                  color: newredliner.colors,
                                  shadowoffset: Offset(4.0, 4.0),
                                  shawdowcolor: Color.fromARGB(123, 65, 64, 64),
                                  shawdowradius: 8.0.r,
                                ),
                              ),
                            ]),
                      ],
                    ),

                    // First colunm TOAL BALANCE AVAILABLE
                    Container(
                      width: 319.w,
                      height: 85.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          gradient: newRadial_r_1_5,
                          boxShadow: [boxShadowWallet]),
                      child: Column(children: [
                        SizedBox(height: 8.h),
                        NewCoustomText(
                          text: "TOAL BALANCE AVAILABLE",
                          fontsize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: newgreygradient.colors,
                          shadowoffset: Offset(4.0, 4.0),
                          shawdowcolor: Color.fromARGB(123, 51, 51, 51),
                          shawdowradius: 10.0.r,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          width: 163.w,
                          height: 41.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: fromCssColor('#FFFFFF').withOpacity(0.5),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(64, 179, 177, 177)
                                    .withOpacity(0.2),
                                offset: const Offset(0.0, 6.0),
                                blurRadius: 4.0,
                              ),
                            ],
                          ),
                          child: Center(
                            child: NewCoustomText(
                              text: "₹ 6152",
                              fontsize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: newgreygradient.colors,
                              shadowoffset: Offset(4.0, 4.0),
                              shawdowcolor: Color.fromARGB(123, 51, 51, 51),
                              shawdowradius: 10.0.r,
                            ),
                          ),
                        ),
                      ]),
                    ),

                    // Second Colunm Entry fee
                    Container(
                      width: 319.w,
                      height: 85.h,
                      decoration: BoxDecoration(
                        boxShadow: [boxShadowWallet],
                        borderRadius: BorderRadius.circular(20.r),
                        gradient: newRadial_r_1_5,
                      ),
                      child: Row(children: [
                        SizedBox(width: 40.w),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 5.h,
                            bottom: 5.h,
                            left: 10.w,
                            right: 20.w,
                          ),
                          child: NewCoustomText(
                            text: "Entry Fees",
                            fontsize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: newgreygradient.colors,
                            shadowoffset: Offset(4.0, 4.0),
                            shawdowcolor: Color.fromARGB(123, 51, 51, 51),
                            shawdowradius: 10.0.r,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Container(
                          width: 153.w,
                          height: 41.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            gradient: newfireliner,
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(144, 78, 85, 92),
                                offset: Offset(0.0, 6.0),
                                blurRadius: 4.0,
                              ),
                            ],
                          ),
                          child: Center(
                            child: NewCoustomText(
                              text: "Pay        ₹ 50",
                              fontsize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: newgreygradient.colors,
                              shadowoffset: Offset(4.0, 4.0),
                              shawdowcolor: Color.fromARGB(123, 51, 51, 51),
                              shawdowradius: 10.0.r,
                            ),
                          ),
                        )
                      ]),
                    ),

                    // Third and fourth Colunm Add Money And Cash Out

                    Row(
                      children: [
                        SizedBox(width: 3.w),
                        Container(
                          width: 131.w,
                          height: 135.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            gradient: RadialGradient(
                              colors: [
                                fromCssColor('#3DCCFE'),
                                fromCssColor('#006177'),
                              ],
                              radius: .5,
                            ),
                            boxShadow: [boxShadowWallet],
                          ),
                          child: Column(children: [
                            Row(
                              children: [
                                SizedBox(width: 35.w),
                                NewCoustomText(
                                  text: "+",
                                  fontsize: 30.sp,
                                  fontWeight: FontWeight.bold,
                                  color: newgreygradient.colors,
                                  shadowoffset: Offset(4.0, 4.0),
                                  shawdowcolor: Color.fromARGB(123, 51, 51, 51),
                                  shawdowradius: 10.0.r,
                                ),
                                Image.asset(
                                  "assets/images/coins.png",
                                  width: 60.w,
                                  height: 60.h,
                                ),
                              ],
                            ),
                            NewCoustomText(
                              text: "  Add\nMoney",
                              fontsize: 20.sp,
                              fontWeight: FontWeight.bold,
                              color: newgreygradient.colors,
                              shadowoffset: Offset(4.0, 4.0),
                              shawdowcolor: Color.fromARGB(123, 51, 51, 51),
                              shawdowradius: 10.0.r,
                            ),
                          ]),
                        ),
                        SizedBox(width: 50.w),
                        Container(
                          width: 131.w,
                          height: 135.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            gradient: RadialGradient(
                              colors: [
                                fromCssColor('#3DCCFE'),
                                fromCssColor('#006177'),
                              ],
                              radius: .5,
                            ),
                            boxShadow: [boxShadowWallet],
                          ),
                          child: Column(children: [
                            Row(
                              children: [
                                SizedBox(width: 35.w),
                                NewCoustomText(
                                  text: "-",
                                  fontsize: 30.sp,
                                  fontWeight: FontWeight.bold,
                                  color: newgreygradient.colors,
                                  shadowoffset: Offset(4.0, 4.0),
                                  shawdowcolor: Color.fromARGB(123, 51, 51, 51),
                                  shawdowradius: 10.0.r,
                                ),
                                Image.asset(
                                  "assets/images/coins.png",
                                  width: 60.w,
                                  height: 60.h,
                                ),
                              ],
                            ),
                            NewCoustomText(
                              text: "Cash\n  Out",
                              fontsize: 20.sp,
                              fontWeight: FontWeight.bold,
                              color: newgreygradient.colors,
                              shadowoffset: Offset(4.0, 4.0),
                              shawdowcolor: Color.fromARGB(123, 51, 51, 51),
                              shawdowradius: 10.0.r,
                            ),
                          ]),
                        ),
                      ],
                    ),

                    // Fifth Colunm Check History
                    Padding(
                      padding: EdgeInsets.only(left: 7.w),
                      child: Container(
                        width: 300.w,
                        height: 55.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          gradient: newRadial_r_1_5,
                          boxShadow: [boxShadowWallet],
                        ),
                        child: Center(
                          child: NewCoustomText(
                            text: "Check History",
                            fontsize: 26.sp,
                            fontWeight: FontWeight.bold,
                            color: newgreygradient.colors,
                            shadowoffset: Offset(4.0, 4.0),
                            shawdowcolor: Color.fromARGB(123, 51, 51, 51),
                            shawdowradius: 10.0.r,
                          ),
                        ),
                      ),
                    ),

                    // Sixth Colunm Support
                    Padding(
                      padding: EdgeInsets.only(left: 7.w),
                      child: Container(
                        width: 300.w,
                        height: 55.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          gradient: newRadial_r_1_5,
                          boxShadow: [boxShadowWallet],
                        ),
                        child: Center(
                          child: NewCoustomText(
                            text: "Coustom Supprt",
                            fontsize: 26.sp,
                            fontWeight: FontWeight.bold,
                            color: metallicGradient.colors,
                            shadowoffset: Offset(4.0, 4.0),
                            shawdowcolor: Color.fromARGB(123, 51, 51, 51),
                            shawdowradius: 10.0.r,
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
      designSize: const Size(428, 926),
    );
  }
}
