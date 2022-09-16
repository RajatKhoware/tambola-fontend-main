import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:tambola_frontend/screens/SignUp_Screens/widgets/text_form.dart';
import 'package:tambola_frontend/widgets/gradient_text.dart';

import '../../../constants/gradients.dart';
import '../../../services/auth_service.dart';
import '../../../widgets/build_text_field.dart';
import '../../SelectRoom/widgets/coustom_button_text.dart';

TextEditingController _numberController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
TextEditingController _promoController = TextEditingController();
GlobalKey<FormState> formKey = GlobalKey<FormState>();
AuthService authService = AuthService();

class SignUpCard4 extends StatefulWidget {
  const SignUpCard4({Key? key}) : super(key: key);

  @override
  State<SignUpCard4> createState() => _SignUpCard4State();
}

class _SignUpCard4State extends State<SignUpCard4> {
  // By defaut, the checkbox is unchecked and "agree" is "false"
  bool agree = false;

  // This function is triggered when the button is clicked
  void _doSomething() {
    Navigator.pushNamed(context, '/bottom-bar');
  }

  void signUpUser(context, name, mobile, password) {
    authService.signUpWithPhone(
        context: context, name: name, mobile: mobile, password: password);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context, child) => Container(
              width: 384.w,
              height: 376.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  gradient: metallicGradientwithOpacity),
              child: SizedBox(
                width: 358.w,
                height: 358.h,
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5.h, left: 5.w),
                    child: SizedBox(
                      width: 337.w,
                      height: 65.h,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/sign-up-3');
                            },
                            icon: const Icon(Icons.arrow_back_ios),
                            iconSize: 30.0.sp,
                            color: fromCssColor('#003240'),
                          ),
                          SizedBox(width: 25.h),
                          CoustomGradientText(
                            text: "Safe Play",
                            gradient: blueLiner2Gradient,
                            style: TextStyle(
                              fontSize: 48.sp,
                              fontFamily: 'IrishGrover',
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(0.0, 3.5),
                                  blurRadius: 6.0.r,
                                  color: Color.fromARGB(99, 0, 0, 0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 358.w,
                      height: 211.h,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20.w),
                              child: NewCoustomText(
                                text: "SET PASSWORD",
                                fontsize: 11.sp,
                                fontWeight: FontWeight.w600,
                                color: [
                                  fromCssColor("#006B8D"),
                                  fromCssColor("#00181E"),
                                ],
                                shadowoffset: Offset(0.0, 5.0),
                                shawdowcolor: Color.fromARGB(29, 0, 0, 0),
                                shawdowradius: 6.r,
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Padding(
                                padding: EdgeInsets.only(left: 7.w),
                                child: BuildTextField(
                                  width: 325.w,
                                  hieght: 30.h,
                                  controller: _numberController,
                                  type: TextInputType.number,
                                  hintText: 'Placement',
                                )),
                            Padding(
                              padding: EdgeInsets.only(left: 20.w, top: 5.h),
                              child: NewCoustomText(
                                text: "PROMO CODE",
                                fontsize: 11.sp,
                                fontWeight: FontWeight.w600,
                                color: [
                                  fromCssColor("#006B8D"),
                                  fromCssColor("#00181E"),
                                ],
                                shadowoffset: Offset(0.0, 5.0),
                                shawdowcolor: Color.fromARGB(29, 0, 0, 0),
                                shawdowradius: 6.r,
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Padding(
                                padding: EdgeInsets.only(left: 7.w),
                                child: BuildTextField(
                                  width: 325.w,
                                  hieght: 30.h,
                                  controller: _numberController,
                                  type: TextInputType.number,
                                  hintText: 'Placement',
                                )),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 7.w, top: 8.h, bottom: 5.h),
                              child: SizedBox(
                                width: 350.w,
                                height: 14.h,
                                child: Row(
                                  children: [
                                    Transform.scale(
                                      scale: 0.8,
                                      child: Checkbox(
                                        value: agree,
                                        onChanged: (value) {
                                          setState(() {
                                            agree = value ?? false;
                                          });
                                        },
                                      ),
                                    ),
                                    NewCoustomText(
                                      text: "I AGREE TO THE ",
                                      fontsize: 11.sp,
                                      fontWeight: FontWeight.w600,
                                      color: [
                                        fromCssColor("#006B8D"),
                                        fromCssColor("#00181E"),
                                      ],
                                      shadowoffset: Offset(0.0, 5.0),
                                      shawdowcolor: Color.fromARGB(29, 0, 0, 0),
                                      shawdowradius: 6.r,
                                    ),
                                    NewCoustomText(
                                      text: "PRIVACY POLICY ",
                                      fontsize: 11.sp,
                                      fontWeight: FontWeight.w600,
                                      color: [
                                        fromCssColor("#FF2020"),
                                        fromCssColor("#A70000"),
                                      ],
                                      shadowoffset: Offset(0.0, 5.0),
                                      shawdowcolor: Color.fromARGB(29, 0, 0, 0),
                                      shawdowradius: 6.r,
                                    ),
                                    NewCoustomText(
                                      text: "& ",
                                      fontsize: 11.sp,
                                      fontWeight: FontWeight.w600,
                                      color: [
                                        fromCssColor("#006B8D"),
                                        fromCssColor("#00181E"),
                                      ],
                                      shadowoffset: Offset(0.0, 5.0),
                                      shawdowcolor: Color.fromARGB(29, 0, 0, 0),
                                      shawdowradius: 6.r,
                                    ),
                                    NewCoustomText(
                                      text: "T&C",
                                      fontsize: 11.sp,
                                      fontWeight: FontWeight.w600,
                                      color: [
                                        fromCssColor("#FF2020"),
                                        fromCssColor("#A70000"),
                                      ],
                                      shadowoffset: Offset(0.0, 5.0),
                                      shawdowcolor: Color.fromARGB(29, 0, 0, 0),
                                      shawdowradius: 6.r,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Center(
                              child: NewCoustomText(
                                text:
                                    "          YOUR PERSONAL DATA WILL BE USED TO SUPPORT YOUR\n EXPERIENCE THROUGHOUT THIS APP, TO MANAGE ACCESS TO YOUR\n  ACCOUNT, AND FOR OTHER PURPOSES DESCRIBED IN OUR PRIVACY\n                                                        POLICY.",
                                fontsize: 7.sp,
                                fontWeight: FontWeight.w500,
                                color: [
                                  fromCssColor("#006B8D"),
                                  fromCssColor("#00181E"),
                                ],
                                shadowoffset: Offset(0.0, 5.0),
                                shawdowcolor: Color.fromARGB(29, 0, 0, 0),
                                shawdowradius: 6.r,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.h, left: 72.w),
                              child: InkWell(
                                onTap: agree ? _doSomething : null,
                                child: CustomButton2(
                                  text: agree ? "Finish" : "Accept T&C",
                                  fontsize: 21.sp,
                                  fontWeight: FontWeight.bold,
                                  width: 180.w,
                                  width2: 150.w,
                                  height: 38.h,
                                  height2: 30.h,
                                  gradient1: blueLiner2Gradient,
                                  gradient2: metallicGradient,
                                  color: [
                                    fromCssColor("#006B8D"),
                                    fromCssColor("#00181E"),
                                  ],
                                  shadowoffset: Offset(0.0, 3.0),
                                  shawdowcolor: Color.fromARGB(71, 0, 0, 0),
                                  shawdowradius: 6.r,
                                ),
                              ),
                            ),
                          ]),
                    ),
                  )
                ]),
              ),
            ));
  }
}



//  Consumer<User>(
//                     builder: ((context, value, child) {
//                       //form to collect the value
//                       return Form(
//                         autovalidateMode: AutovalidateMode.onUserInteraction,
//                         key: formKey,
//                         child: Column(
//                           children: [
//                                Padding(
//                                   padding:
//                                       EdgeInsets.only(left: 10.w, top: 5.h),
//                                   child: NewCoustomText(
//                                     text: "SET PASSWORD",
//                                     fontsize: 13.sp,
//                                     fontWeight: FontWeight.w600,
//                                     color: [
//                                       fromCssColor("#006B8D"),
//                                       fromCssColor("#00181E"),
//                                     ],
//                                     shadowoffset: Offset(0.0, 5.0),
//                                     shawdowcolor: Color.fromARGB(29, 0, 0, 0),
//                                     shawdowradius: 6.r,
//                                   ),
//                                 ),
//                             BuildTextField(
//                                 controller: _passwordController,
//                                 type: TextInputType.visiblePassword,
                             
//                                 hintText: 'SET PASSWORD',
                              
//                             const SizedBox(
//                               height: 5,
//                             ),
//                               Padding(
//                                   padding:
//                                       EdgeInsets.only(left: 10.w, top: 10.h),
//                                   child: NewCoustomText(
//                                     text: "PROMO CODE",
//                                     fontsize: 13.sp,
//                                     fontWeight: FontWeight.w600,
//                                     color: [
//                                       fromCssColor("#006B8D"),
//                                       fromCssColor("#00181E"),
//                                     ],
//                                     shadowoffset: Offset(0.0, 5.0),
//                                     shawdowcolor: Color.fromARGB(29, 0, 0, 0),
//                                     shawdowradius: 6.r,
//                                   ),
//                                 ),
//                             BuildTextField(
//                                 controller: _promoController,
//                                 hintText: 'OPTIONAL',
//                             //row widget for the checkbox and privacy policy
//                             Row(
//                               children: const [
//                                 Checkbox(
//                                   value: true,
//                                   onChanged: null,
//                                   activeColor: textColor1,
//                                 ),
//                                 CoustomGradientText(
//                                   text: "I AGREE TO THE PRIVACY POLICY",
//                                   gradient: blackLinear,
//                                   style: CustomTextStyle(
//                                       fontWeight: FontWeight.w600),
//                                 ),
//                               ],
//                             ),
//                             const Text(
//                               "YOUR PERSONAL DATA WILL BE USED TO SUPPORT YOUR EXPERIENCE THOOUGHOUT THE WEBSITE, TO MANAGE ACCESS TO YOUR ACCOUNT, AND FOR OTHER PURPOSES DESCRIBED IN OUR PRIVACY POLICY",
//                               style: CustomTextStyle(
//                                   fontWeight: FontWeight.normal,
//                                   fontSize: 9,
//                                   textColor: Colors.black87),
//                               textAlign: TextAlign.center,
//                             ),
//                             const SizedBox(
//                               height: 5,
//                             ),
//                             CustomizedButton(
//                                 buttonBackgroundGradient: blueLiner2Gradient,
//                                 buttonGradient: fireLinearGradient,
//                                 buttonText: "Login",
//                                 handleClick: () {
//                                   value.password = _passwordController.text;
//                                   debugPrint(
//                                       " ${value.name}: ${value.mobile}: ${value.password}");
//                                   signUpUser(context, value.name, value.mobile,
//                                       value.password);
//                                 })
//                           ],
//                         ),
//                       );
//                     }),
//                   ),