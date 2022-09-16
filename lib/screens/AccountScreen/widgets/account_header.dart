import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tambola_frontend/constants/colors.dart';
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/widgets/heading_text.dart';

import '../../../widgets/coustom_gradient_text.dart';

class AccountScreenHeader extends StatelessWidget {
  const AccountScreenHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Container(
        height: 119.h,
        width: double.infinity,
        decoration: const BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 0, 79, 143),
                offset: Offset(0.0, 3.0),
                blurRadius: 6.0,
              ),
            ],
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [kBackgroundGradient1, kBackgroundGradient2])),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 33.99.h,
              decoration: BoxDecoration(gradient: greyLinerGradient),
            ),
            Expanded(
              child: Row(
                children: [
                  SizedBox(width: 10.w),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                  SizedBox(width: 70.w),
                  Padding(
                    padding: EdgeInsets.only(top: 6.h),
                    child: Container(
                      height: 19.h,
                      width: 21.w,
                      decoration:
                          const BoxDecoration(gradient: fireLinearGradient),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  CoustomGradintText(
                      text: "Logo Name",
                      fontsize: 11.0.sp,
                      fontweight: FontWeight.normal,
                      firstgradientcolor: '#FFFFFF',
                      secondgradientcolor: '#909090'),
                  SizedBox(
                    width: 90.w,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 6.h),
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(child: HeadingText(fontSize: 34.sp)),
          ],
        ),
      ),
    );
  }
}
