import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/constants/new_gradints.dart';
import 'package:tambola_frontend/screens/SelectRoom/widgets/coustom_button_text.dart';
import 'package:tambola_frontend/screens/SignUp_Screens/widgets/language_down.dart';

class StartCard0 extends StatefulWidget {
  const StartCard0({Key? key}) : super(key: key);

  @override
  State<StartCard0> createState() => _StartCard0State();
}

class _StartCard0State extends State<StartCard0> {
  String _language = "English";
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Container(
        width: 398.w,
        height: 384.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(41.r),
          gradient: metallicGradientwithOpacity,
        ),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 15.h, right: 20.h, left: 20.h),
            child: SizedBox(
              width: 351.w,
              height: 124.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 164.w,
                      height: 124.h,
                      child: Column(
                        children: [
                          NewCoustomText(
                            text: "Welcome",
                            fontsize: 30.sp,
                            fontWeight: FontWeight.w500,
                            color: newblue2liner.colors,
                            shadowoffset: Offset(0.0, 5.0),
                            shawdowcolor: Color.fromARGB(29, 0, 0, 0),
                            shawdowradius: 6.r,
                          ),
                          SizedBox(height: 2.h),
                          NewCoustomText(
                            text: "Select language",
                            fontsize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: newblue2liner.colors,
                          ),
                          SizedBox(height: 7.h),
                          LanguageDropDown(
                            languages: const [
                              'English',
                              'Hindi',
                              'Bengali',
                              'Marathi',
                              'Telugu',
                              'Tamil',
                              'Gujarati',
                              'Urdu',
                              'Kannada',
                              'Odia',
                            ],
                            language: _language,
                            onChanged: (val) => setState(() => _language = val),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 129.w,
                      height: 118.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8.h, left: 20.w),
                            child: NewCoustomText(
                              text: "SIGN UP /LOGIN\n        IN WITH",
                              fontsize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: newblue2liner.colors,
                              shadowoffset: Offset(0.0, 3.5),
                              shawdowcolor: Color.fromARGB(75, 0, 0, 0),
                              shawdowradius: 6.r,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15.h, left: 40.w),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 20.r,
                                  backgroundImage:
                                      AssetImage("assets/logos/google.jpg"),
                                  backgroundColor: Colors.white,
                                ),
                                SizedBox(width: 15.w),
                                CircleAvatar(
                                  radius: 20.r,
                                  backgroundColor: Colors.white,
                                  backgroundImage:
                                      AssetImage("assets/logos/fb.png"),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Expanded(
            child: SizedBox(
              height: 153.h,
              width: 247.w,
              child: Column(children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/select-room');
                  },
                  child: CustomButton2(
                    text: "Guest Login",
                    fontsize: 19.sp,
                    fontWeight: FontWeight.bold,
                    width: 220.w,
                    width2: 190.w,
                    height: 38.h,
                    height2: 28.h,
                    gradient1: blueLiner2Gradient,
                    gradient2: blueGradient,
                    color: [
                      fromCssColor("#FFFFFF"),
                      fromCssColor("#FFFFFF"),
                    ],
                    shadowoffset: Offset(0.0, 4.0),
                    shawdowcolor: Color.fromARGB(80, 0, 0, 0),
                    shawdowradius: 6.r,
                  ),
                ),
                SizedBox(height: 8.h),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/sign-up-1');
                  },
                  child: CustomButton2(
                    text: "Sign Up",
                    fontsize: 19.sp,
                    fontWeight: FontWeight.bold,
                    width: 220.w,
                    width2: 190.w,
                    height: 38.h,
                    height2: 28.h,
                    gradient1: blueLiner2Gradient,
                    gradient2: blueGradient,
                    color: [
                      fromCssColor("#FFFFFF"),
                      fromCssColor("#FFFFFF"),
                    ],
                    shadowoffset: Offset(0.0, 4.0),
                    shawdowcolor: Color.fromARGB(80, 0, 0, 0),
                    shawdowradius: 6.r,
                  ),
                ),
                SizedBox(height: 8.h),
                InkWell(
                  onTap: () {},
                  child: CustomButton2(
                    text: "Login",
                    fontsize: 19.sp,
                    fontWeight: FontWeight.bold,
                    width: 220.w,
                    width2: 190.w,
                    height: 38.h,
                    height2: 28.h,
                    gradient1: blueLiner2Gradient,
                    gradient2: greyLinerGradient,
                    color: newblue2liner.colors,
                    shadowoffset: Offset(0.0, 4.0),
                    shawdowcolor: Color.fromARGB(80, 0, 0, 0),
                    shawdowradius: 6.r,
                  ),
                )
              ]),
            ),
          )
        ]),
      ),

      //designSize: const Size(398, 384),
    );
  }
}
