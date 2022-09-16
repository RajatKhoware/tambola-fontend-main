import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/widgets/gradient_text.dart';

import 'coustom_gradient_text.dart';

class HeadingText extends StatelessWidget {
  final double fontSize;
  final Gradient textGradient;

  const HeadingText({
    this.fontSize = 34.0,
    this.textGradient = fireLinearGradient,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => SizedBox(
        height: 45.8.h,
        width: double.infinity,
        child: Row(
          children: [
            SizedBox(
              width: 115.w,
            ),
            CoustomGradientText(
              text: "Tambola",
              gradient: textGradient,
              style: TextStyle(
                fontFamily: 'IrishGrover',
                fontSize: fontSize.sp,
              ),
            ),
            SizedBox(
              width: 2.w,
            ),
            Container(
              margin: EdgeInsets.only(left: 23.w),
              width: 70.w,
              height: 20.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.r),
                gradient: LinearGradient(
                  colors: [
                    fromCssColor('#FFFFFF').withOpacity(0.5),
                    fromCssColor('#E7E7E7').withOpacity(0.5),
                    fromCssColor('#CACACA').withOpacity(0.5),
                    fromCssColor('#C0C0C0').withOpacity(0.5),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Image.asset('assets/images/coin.png'),
                  ),
                  CoustomGradintText(
                      text: "6128",
                      fontsize: 12.0.sp,
                      fontweight: FontWeight.bold,
                      firstgradientcolor: '#FF9900',
                      secondgradientcolor: '#FFF500')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
