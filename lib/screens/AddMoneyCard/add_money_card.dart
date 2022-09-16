// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/constants/new_gradints.dart';
import 'package:tambola_frontend/screens/AddMoneyCard/widgets/add_money_container.dart';
import 'package:tambola_frontend/screens/SelectRoom/widgets/coustom_button_text.dart';

class AddMoneyCard extends StatefulWidget {
  const AddMoneyCard({Key? key}) : super(key: key);

  @override
  State<AddMoneyCard> createState() => _AddMoneyCardState();
}

class _AddMoneyCardState extends State<AddMoneyCard> {
  String amount = "";
  bool changeButton = false;

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Navigator.pushNamed(context, '/add-money');
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            width: 359.w,
            height: 418.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                gradient: newmetallicGradient),
            child: Column(children: [
              SizedBox(height: 20.h),
              Container(
                width: 319.w,
                height: 80.h,
                decoration: BoxDecoration(
                    gradient: blueGradient2,
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: [boxShadowWallet]),
                child: Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 13.h, left: 30.w, right: 15.w,),
                      child: Column(
                        children: [
                          NewCoustomText(
                            text: "Add Money",
                            fontsize: 17.sp,
                            fontWeight: FontWeight.bold,
                            color: newgreygradient.colors,
                            shadowoffset: Offset(0.0, 5.0),
                            shawdowcolor: Color.fromARGB(29, 0, 0, 0),
                            shawdowradius: 6.r,
                          ),
                          NewCoustomText(
                            text: "Minimum : ₹5 ",
                            fontsize: 10.sp,
                            fontWeight: FontWeight.bold,
                            color: newgreygradient.colors,
                            shadowoffset: Offset(0.0, 5.0),
                            shawdowcolor: Color.fromARGB(29, 0, 0, 0),
                            shawdowradius: 6.r,
                          ),
                          NewCoustomText(
                            text: "Maximum : ₹20000",
                            fontsize: 10.sp,
                            fontWeight: FontWeight.bold,
                            color: newgreygradient.colors,
                            shadowoffset: Offset(0.0, 5.0),
                            shawdowcolor: Color.fromARGB(29, 0, 0, 0),
                            shawdowradius: 6.r,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 163.w,
                      height: 39.h,
                      decoration: BoxDecoration(
                        gradient: newfireliner,
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [boxShadowWallet],
                        border: Border.all(
                            width: 1.5.w,
                            color: Color.fromARGB(255, 49, 49, 49)
                                .withOpacity(.6)),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 15.w),
                          InkWell(
                            onTap: () => moveToHome(context),
                            child: NewCoustomText(
                              text: "Pay",
                              fontsize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: newgreygradient.colors,
                              shadowoffset: Offset(0.0, 5.0),
                              shawdowcolor: Color.fromARGB(29, 0, 0, 0),
                              shawdowradius: 6.r,
                            ),
                          ),
                          SizedBox(width: 6.w),
                          Form(
                            key: _formkey,
                            child: Container(
                              width: 104.w,
                              height: 25.h,
                              decoration: BoxDecoration(
                                color: fromCssColor("#D9D9D9"),
                                borderRadius: BorderRadius.circular(30.r),
                                border: Border.all(
                                    width: 2.w,
                                    color: Color.fromARGB(193, 95, 95, 95)
                                        .withOpacity(.6)),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: TextFormField(
                                  style: TextStyle(fontSize: 10.sp),
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: " Enter Amount Here",
                                    hintStyle: TextStyle(
                                        fontSize: 9.sp,
                                        color: fromCssColor("#545050")),
                                    border: InputBorder.none,
                                    errorStyle: TextStyle(
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  onChanged: (value) {
                                    amount = value;
                                    setState(() {});
                                  },
                                  validator: (value) {
                                    if (value != null && value.isEmpty) {
                                      return "Please Enter the amount";
                                    } else if (value != null &&
                                        (int.parse(value) < 5 ||
                                            int.parse(value) > 20000)) {
                                      return "Please Enter 5 to 20000";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                width: 359.w,
                height: 275.h,
                child: Expanded(
                  child: ListView(
                    padding: EdgeInsets.only(top: 0.h, left: 50.w),
                    children: [
                      AddMoneyContainer(
                        coins: "5",
                        amount: "5",
                        coins1: "50",
                        amount1: "50",
                        padding1: 22.w,
                        padding: 30.w,
                      ),
                      SizedBox(height: 10.h),
                      AddMoneyContainer(
                        coins: "120",
                        amount: "100",
                        coins1: "240",
                        amount1: "200",
                        padding1: 15.w,
                        padding: 15.w,
                      ),
                      SizedBox(height: 10.h),
                      AddMoneyContainer(
                        coins: "580",
                        amount: "500",
                        coins1: "1150",
                        amount1: "1000",
                        padding1: 12.w,
                        padding: 15.w,
                      ),
                      SizedBox(height: 10.h),
                      AddMoneyContainer(
                        coins: "2300",
                        amount: "2000",
                        coins1: "5500",
                        amount1: "5000",
                        padding1: 7.w,
                        padding: 7.w,
                      ),
                      SizedBox(height: 10.h),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
      designSize: const Size(428, 926),
    );
  }
}
