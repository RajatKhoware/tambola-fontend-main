// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:tambola_frontend/constants/colors.dart';
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/widgets/custom_text.dart';

import '../widgets/gradient_text.dart';

class BuildTextField extends StatefulWidget {
  final String? label;
  final String hintText;
  final TextInputType type;
  final Color color;
  final int maxLength;
  final Gradient textGradient;
  final TextEditingController controller;
  final double? width;
  final double? hieght;

  const BuildTextField({
    Key? key,
    this.label,
    required this.hintText,
    this.type = TextInputType.text,
    this.color = textFieldColor,
    this.maxLength = 10,
    this.textGradient = blueLiner2Gradient,
    required this.controller,
    this.width = 335,
    this.hieght = 38,
  }) : super(key: key);

  @override
  State<BuildTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<BuildTextField> {
  bool isVisible = true;
  setVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context, child) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15.w),
                  width: widget.width,
                  height: widget.hieght,
                  decoration: BoxDecoration(
                      gradient: blackLinear,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: TextFormField(
                      expands: false,
                      controller: widget.controller,
                      style: TextStyle(
                        fontSize: 12.sp,
                        foreground: Paint()..shader = textlinearGradient,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This field can't be left empty";
                        }
                        if (value.length < 4) {
                          return "Enter min. 4 characters";
                        } else {
                          return null;
                        }
                      },
                      obscureText: !isVisible,
                      keyboardType: widget.type,
                      maxLength: widget.type == TextInputType.number
                          ? widget.maxLength
                          : null,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 0.h, bottom: 5.h),
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: widget.hintText,
                        hintStyle: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                          foreground: Paint()..shader = textlinearGradient,
                        ),
                        suffixIcon: widget.type == TextInputType.visiblePassword
                            ? IconButton(
                                icon: Icon(!isVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off_outlined),
                                onPressed: () {
                                  setVisibility();
                                },
                              )
                            : null,
                      )),
                ),
              ],
            ));
  }
}
