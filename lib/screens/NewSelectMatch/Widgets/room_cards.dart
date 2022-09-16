// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:from_css_color/from_css_color.dart';

import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/screens/AddMoney/add_money_page.dart';
import 'package:tambola_frontend/screens/Game/tambola_board.dart';
import 'package:tambola_frontend/screens/SelectRoom/widgets/coustom_button_text.dart';
import 'package:tambola_frontend/screens/WaitingRoom/waiting_room_screen.dart';

class RoomCard extends StatelessWidget {
  final String? text;
  final double? activeuser;
  final double? roomtype;
  final double? entryfee;

  const RoomCard({
    Key? key,
    this.text,
    this.activeuser,
    this.roomtype,
    this.entryfee,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final Prize prize =  Prize();
    return ScreenUtilInit(
        builder: (context, child) => Container(
              width: 358.w,
              height: 167.h,
              decoration: BoxDecoration(
                  gradient: metallicGradient,
                  borderRadius: BorderRadius.circular(25.r)),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 25.w, bottom: 10.h),
                  child: Row(
                    children: [
                      NewCoustomText(
                        text: "ACTIVE PLAYER :",
                        fontsize: 10.sp,
                        fontWeight: FontWeight.w600,
                        color: [
                          fromCssColor("#484848"),
                          fromCssColor("#2C2C2C")
                        ],
                        shadowoffset: Offset(0.0, 5.0),
                        shawdowcolor: Color.fromARGB(29, 0, 0, 0),
                        shawdowradius: 6.r,
                      ),
                      SizedBox(width: 20.w),
                      NewCoustomText(
                        text: "$activeuser/100",
                        fontsize: 10.sp,
                        fontWeight: FontWeight.w600,
                        color: [
                          fromCssColor("#006B8D"),
                          fromCssColor("#00181E")
                        ],
                        shadowoffset: Offset(0.0, 5.0),
                        shawdowcolor: Color.fromARGB(29, 0, 0, 0),
                        shawdowradius: 6.r,
                      ),
                      SizedBox(width: 40.w),
                      NewCoustomText(
                        text: "ENTRY FEE: ",
                        fontsize: 10.sp,
                        fontWeight: FontWeight.w600,
                        color: [
                          fromCssColor("#002D36"),
                          fromCssColor("#002D36")
                        ],
                        shadowoffset: Offset(0.0, 5.0),
                        shawdowcolor: Color.fromARGB(29, 0, 0, 0),
                        shawdowradius: 6.r,
                      ),
                      SizedBox(width: 5.w),
                      Image.asset("assets/images/coin.png",
                          width: 12.w, height: 14.h),
                      NewCoustomText(
                        text: entryfee.toString(),
                        fontsize: 13.sp,
                        fontWeight: FontWeight.bold,
                        color: [
                          fromCssColor("#FF9900"),
                          fromCssColor("#FFF500")
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 235.w,
                      height: 84.h,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.w),
                        child: Column(
                          children: [
                            Center(
                              child: NewCoustomText(
                                text: "WINNING PRIZE",
                                fontsize: 19.sp,
                                fontWeight: FontWeight.bold,
                                color: [
                                  fromCssColor("#006B8D"),
                                  fromCssColor("#00181E")
                                ],
                                shadowoffset: Offset(0.0, 5.0),
                                shawdowcolor: Color.fromARGB(29, 0, 0, 0),
                                shawdowradius: 6.r,
                              ),
                            ),
                            SizedBox(height: 3.h),
                            Row(
                              children: [
                                ReuseableRoomContainer(
                                    containerText: "First 5",
                                    containerAmount: "40"),
                                SizedBox(width: 5.w),
                                ReuseableRoomContainer(
                                    containerText: "ROW 1",
                                    containerAmount: "40"),
                              ],
                            ),
                            SizedBox(height: 3.h),
                            Row(
                              children: [
                                ReuseableRoomContainer(
                                    containerText: "ROW 2",
                                    containerAmount: "40"),
                                SizedBox(width: 5),
                                ReuseableRoomContainer(
                                    containerText: "ROW 3",
                                    containerAmount: "40"),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2.w, top: 8.h),
                      child: Container(
                        width: 90.w,
                        height: 65.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            gradient: maroonGradient),
                        child: Column(children: [
                          SizedBox(height: 4.h),
                          NewCoustomText(
                            text: "Tambola",
                            fontsize: 19.sp,
                            fontFamily: 'IrishGrover',
                            fontWeight: FontWeight.bold,
                            color: [
                              fromCssColor("#FF9900"),
                              fromCssColor("#FFF500")
                            ],
                            shadowoffset: Offset(0.0, 5.0),
                            shawdowcolor: Color.fromARGB(29, 0, 0, 0),
                            shawdowradius: 6.r,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.w, top: 5.h),
                            child: Row(
                              children: [
                                Image.asset("assets/images/coin.png",
                                    width: 21.w, height: 24.h),
                                NewCoustomText(
                                  text: "150",
                                  fontsize: 19.sp,
                                  fontWeight: FontWeight.bold,
                                  color: [
                                    fromCssColor("#FF9900"),
                                    fromCssColor("#FFF500")
                                  ],
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 5.w),
                    CustomButton2(
                        text: "Invite",
                        fontsize: 15.sp,
                        fontWeight: FontWeight.bold,
                        width: 70.w,
                        width2: 50.w,
                        height: 38.h,
                        height2: 24.h,
                        gradient1: blueLiner2Gradient,
                        gradient2: metallicGradient,
                        color: [
                          fromCssColor("#006B8D"),
                          fromCssColor("#00181E")
                        ]),
                    SizedBox(width: 5.w),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WaitingRoomScreen()));
                      },
                      child: CustomButton2(
                          text: "Play",
                          fontsize: 21.sp,
                          fontWeight: FontWeight.bold,
                          width: 105.w,
                          width2: 70.w,
                          height: 43.h,
                          height2: 29.h,
                          gradient1: blueLiner2Gradient,
                          gradient2: fireLinearGradient,
                          color: [
                            fromCssColor("#006B8D"),
                            fromCssColor("#00181E")
                          ]),
                    ),
                    SizedBox(width: 5.w),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddMoneyScreen()));
                      },
                      child: CustomButton2(
                          text: "Buy 1 Ticket",
                          fontsize: 13.sp,
                          fontWeight: FontWeight.bold,
                          width: 130.w,
                          width2: 100.w,
                          height: 38.h,
                          height2: 24.h,
                          gradient1: blueLiner2Gradient,
                          gradient2: metallicGradient,
                          color: [
                            fromCssColor("#006B8D"),
                            fromCssColor("#00181E")
                          ]),
                    )
                  ],
                )
              ]),
            ));
  }
}

class ReuseableRoomContainer extends StatelessWidget {
  final String containerText;
  final String containerAmount;
  const ReuseableRoomContainer({
    Key? key,
    required this.containerText,
    required this.containerAmount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context, child) => Container(
              width: 103.w,
              height: 25.5.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  gradient: maroonGradient),
              child: Row(children: [
                SizedBox(width: 10.w),
                NewCoustomText(
                  text: containerText,
                  fontsize: 9.sp,
                  fontWeight: FontWeight.bold,
                  color: [fromCssColor("#FFFFFF"), fromCssColor("#FFFFFF")],
                ),
                SizedBox(width: 16.w),
                Image.asset("assets/images/coin.png",
                    width: 16.w, height: 16.h),
                NewCoustomText(
                  text: containerAmount,
                  fontsize: 13.sp,
                  fontWeight: FontWeight.bold,
                  color: [fromCssColor("#FF9900"), fromCssColor("#FFF500")],
                ),
              ]),
            ));
  }
}

// class Prize {
//     RoomCard? roomCard;

//    checkwin() {
//     double totalprize =
//         (roomCard!.activeuser * roomCard!.entryfee.toDouble()) * 0.8;
//     // double tambola = totalprize * 0.35;
//     // double restprize = tambola / 4;
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }



// class CustomButton3 extends StatefulWidget {
//   final double width;
//   final double width2;
//   final double height;
//   final double height2;
//   final Gradient gradient1;
//   final Gradient gradient2;
//   final List<Color> color;
//   final Offset? shadowoffset;
//   final Color? shawdowcolor;
//   final double? shawdowradius;

//   const CustomButton3({
//     Key? key,
//     required this.width,
//     required this.width2,
//     required this.height,
//     required this.height2,
//     required this.gradient1,
//     required this.gradient2,
//     required this.color,
//     this.shadowoffset = const Offset(0.0, 0.0),
//     this.shawdowcolor = Colors.transparent,
//     this.shawdowradius = 0.0,
//   }) : super(key: key);

//   @override
//   State<CustomButton3> createState() => _CustomButton3State();
// }

// class _CustomButton3State extends State<CustomButton3> {
//   List<String> items = ['Buy 1 Ticket', 'Buy 2 Ticket', 'Buy 3 Ticket'];
//   String? selectedItem = "Buy 1 Ticket";

//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       builder: (context, child) => Stack(children: [
//         Container(
//           width: widget.width,
//           height: widget.height,
//           decoration: BoxDecoration(
//               gradient: widget.gradient1,
//               borderRadius: BorderRadius.circular(40.r)),
//           child: Center(
//             child: Container(
//               width: widget.width2,
//               height: widget.height2,
//               decoration: BoxDecoration(
//                   gradient: widget.gradient2,
//                   borderRadius: BorderRadius.circular(40.r)),
//               child: Center(
//                 child: DropdownButtonHideUnderline(
//                   child: ButtonTheme(
//                     // alignedDropdown: true,
//                     child: DropdownButtonFormField<String>(
//                       isExpanded: true,
//                       decoration: InputDecoration(
//                         prefixIconConstraints: BoxConstraints(maxWidth: 20),
//                         prefixIcon: Icon(
//                           Icons.arrow_drop_down_circle,
//                           size: 20,
//                         ),
//                         prefixIconColor: Color.fromARGB(255, 0, 36, 66),
//                       ),
//                       iconSize: 0.0,
//                       dropdownColor: Color.fromARGB(255, 167, 80, 80),
//                       value: selectedItem,
//                       items: items
//                           .map((item) => DropdownMenuItem(
//                                 value: item,
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(left: 5),
//                                   child: GradientText(
//                                     item,
//                                     style: TextStyle(
//                                       fontSize: 13.0.sp,
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                     gradientType: GradientType.linear,
//                                     gradientDirection: GradientDirection.ttb,
//                                     radius: .5,
//                                     colors: [
//                                       fromCssColor('#006B8D'),
//                                       fromCssColor('#00181E'),
//                                     ],
//                                   ),
//                                 ),
//                               ))
//                           .toList(),
//                       onChanged: (item) => setState(() => selectedItem = item),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ]),
//     );
//   }
// }

// class DropDownCard extends StatefulWidget {
//   final double width2;
//   final double height2;
//   final Gradient gradient2;
//   const DropDownCard({
//     Key? key,
//     required this.width2,
//     required this.height2,
//     required this.gradient2,
//   }) : super(key: key);

//   @override
//   State<DropDownCard> createState() => _DropDownCardState();
// }

// class _DropDownCardState extends State<DropDownCard> {
//   List<String> items = ['Buy 1 Ticket', 'Buy 2 Ticket', 'Buy 3 Ticket'];
//   String? selectedItem = "Buy 1 Ticket";
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: widget.width2,
//       height: widget.height2,
//       decoration: BoxDecoration(
//           gradient: widget.gradient2,
//           borderRadius: BorderRadius.circular(40.r)),
//       child: Center(
//         child: DropdownButtonHideUnderline(
//           child: DropdownButtonFormField<String>(
//             isExpanded: true,
//             elevation: 0,
//             decoration: InputDecoration(
//               prefixIconConstraints: BoxConstraints(maxWidth: 20),
//               prefixIcon: Icon(
//                 Icons.arrow_drop_down_circle,
//                 size: 20,
//               ),
//               prefixIconColor: Color.fromARGB(255, 0, 36, 66),
//             ),
//             iconSize: 0.0,
//             dropdownColor: Color.fromARGB(255, 167, 80, 80),
//             value: selectedItem,
//             items: items
//                 .map((item) => DropdownMenuItem(
//                       value: item,
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 5),
//                         child: GradientText(
//                           item,
//                           style: TextStyle(
//                             fontSize: 13.0.sp,
//                             fontWeight: FontWeight.w500,
//                           ),
//                           gradientType: GradientType.linear,
//                           gradientDirection: GradientDirection.ttb,
//                           radius: .5,
//                           colors: [
//                             fromCssColor('#006B8D'),
//                             fromCssColor('#00181E'),
//                           ],
//                         ),
//                       ),
//                     ))
//                 .toList(),
//             onChanged: (item) => setState(() => selectedItem = item),
//           ),
//         ),
//       ),
//     );
//   }
// }
