import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/screens/PlayRoom/royal_tambola_card.dart';
import 'package:tambola_frontend/screens/PlayRoom/select_room_practise_card.dart';
import 'package:tambola_frontend/screens/SelectRoom/widgets/coustom_button_text.dart';
import '../AccountScreen/widgets/account_header.dart';

class SelectRoomScreen extends StatelessWidget {
  const SelectRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: metallicGradient),
          child: Column(children: [
            AccountScreenHeader(),
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
                child: Expanded(
                  child: Row(
                    children: [
                      SizedBox(width: 15.w),
                      NewCoustomText(
                          text: "Select Game",
                          fontsize: 25.sp,
                          fontWeight: FontWeight.w600,
                          color: metallicGradient.colors),
                      Expanded(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.info_outline,
                            size: 25.sp,
                            color: Color.fromARGB(255, 252, 165, 67),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                children: [
                  SizedBox(height: 10.h),
                  PractiseRoomCard(),
                  SizedBox(height: 20.h),
                  RoyalTambolaCard(),
                  SizedBox(height: 40.h),
                ],
              ),
            ),
          ]),
        ),
        // bottomNavigationBar: NewNavBar(),
      ),
      designSize: const Size(428, 915),
    );
  }
}
