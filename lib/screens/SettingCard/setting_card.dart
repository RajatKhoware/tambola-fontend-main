// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/constants/new_gradints.dart';
import '../SelectRoom/widgets/coustom_button_text.dart';

class SettingCard extends StatefulWidget {
  const SettingCard({Key? key}) : super(key: key);

  @override
  State<SettingCard> createState() => _SettingCardState();
}

class _SettingCardState extends State<SettingCard> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            width: 359,
            height: 680,
            decoration: BoxDecoration(
                gradient: metallicGradient,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                SettingCardProfilePic(),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: CoustomSettingRow(
                      text: "User Name", sizebox: 140, icon: Icon(Icons.edit)),
                ),
                CoustomSettingRow(
                    text: "Email", sizebox: 190, icon: Icon(Icons.edit)),
                CoustomSettingRow(
                    text: "Mobile Number", sizebox: 90, icon: Icon(Icons.edit)),
                SizedBox(height: 10),
                SettingSwitchButton(
                  text: "Music",
                  sizebox: 210,
                ),
                SizedBox(height: 20),
                SettingSwitchButton(
                  text: "Sound",
                  sizebox: 207,
                ),
                SizedBox(height: 20),
                SettingLangDown(),
                SizedBox(height: 20),
                SettingSwitchButton(
                  text: "Security",
                  sizebox: 190,
                ),
                SizedBox(height: 40),
                CustomButton2(
                    text: "Reset Password",
                    fontsize: 23,
                    fontWeight: FontWeight.bold,
                    width: 290,
                    width2: 260,
                    height: 49,
                    height2: 35,
                    gradient1: newblue2liner,
                    gradient2: blueGradient,
                    color: metallicGradient.colors),
                SizedBox(height: 15),
                CustomButton2(
                    text: "Support",
                    fontsize: 23,
                    fontWeight: FontWeight.bold,
                    width: 290,
                    width2: 260,
                    height: 49,
                    height2: 35,
                    gradient1: newblue2liner,
                    gradient2: blueGradient,
                    color: metallicGradient.colors),
              ],
            ),
          ),
        ));
  }
}

class SettingCardProfilePic extends StatefulWidget {
  const SettingCardProfilePic({Key? key}) : super(key: key);

  @override
  State<SettingCardProfilePic> createState() => _SettingCardProfilePicState();
}

class _SettingCardProfilePicState extends State<SettingCardProfilePic> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 68.0,
        backgroundColor: Colors.transparent,
        child: ClipOval(
          child: Stack(
            children: <Widget>[
              Image.asset('assets/images/profile_photo.png'),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                height: 38,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 30,
                    color: const Color.fromARGB(129, 0, 0, 0),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, bottom: 10),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 15,
                                )),
                            const Text(
                              "Edit",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CoustomSettingRow extends StatefulWidget {
  final String text;
  final Icon? icon;
  final double sizebox;
  const CoustomSettingRow({
    Key? key,
    required this.text,
    this.icon,
    required this.sizebox,
  }) : super(key: key);

  @override
  State<CoustomSettingRow> createState() => _CoustomSettingRowState();
}

class _CoustomSettingRowState extends State<CoustomSettingRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: NewCoustomText(
            text: widget.text,
            fontsize: 20.0,
            fontWeight: FontWeight.bold,
            color: newblacklinergradient.colors,
            shadowoffset: Offset(2.0, 4.0),
            shawdowcolor: Color.fromARGB(33, 51, 51, 51),
            shawdowradius: .5,
          ),
        ),
        SizedBox(width: widget.sizebox),
        IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
      ],
    );
  }
}

class SettingSwitchButton extends StatefulWidget {
  final String text;
  final double sizebox;
  const SettingSwitchButton({
    Key? key,
    required this.text,
    required this.sizebox,
  }) : super(key: key);

  @override
  State<SettingSwitchButton> createState() => _SettingSwitchButtonState();
}

class _SettingSwitchButtonState extends State<SettingSwitchButton> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        children: [
          NewCoustomText(
            text: widget.text,
            fontsize: 20.0,
            fontWeight: FontWeight.bold,
            color: newblacklinergradient.colors,
            shadowoffset: Offset(2.0, 4.0),
            shawdowcolor: Color.fromARGB(33, 51, 51, 51),
            shawdowradius: .5,
          ),
          SizedBox(width: widget.sizebox),
          FlutterSwitch(
              width: 37,
              height: 20,
              padding: 2.5,
              toggleSize: 16,
              activeColor: Color.fromARGB(255, 2, 47, 83),
              inactiveColor: Color.fromARGB(216, 32, 32, 32),
              value: status,
              onToggle: (val) {
                setState(() {
                  status = val;
                });
              })
        ],
      ),
    );
  }
}

class SettingLanguageDropDown extends StatelessWidget {
  final List<String> languages;
  final String language;
  final Function(dynamic) onChanged;

  // ignore: use_key_in_widget_constructors
  const SettingLanguageDropDown({
    required this.languages,
    required this.language,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context, child) => Container(
              padding: EdgeInsets.symmetric(horizontal: 12.0.w),
              height: 25.0,
              width: 104,
              decoration: BoxDecoration(
                gradient: metallicGradientwithOpacity,
                borderRadius: BorderRadius.circular(20.0.r),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: true,
                  dropdownColor: Color.fromARGB(255, 131, 131, 131),
                  icon: Icon(
                    Icons.arrow_drop_down_circle,
                    color: Colors.grey,
                    size: 18.sp,
                  ),
                  value: language,
                  items: languages
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Row(
                              children: <Widget>[
                                SizedBox(width: 0.w),
                                NewCoustomText(
                                    text: e,
                                    fontsize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    color: newblacklinergradient.colors)
                              ],
                            ),
                          ))
                      .toList(),
                  onChanged: onChanged,
                ),
              ),
            ));
  }
}

class SettingLangDown extends StatefulWidget {
  const SettingLangDown({Key? key}) : super(key: key);

  @override
  State<SettingLangDown> createState() => _SettingLangDownState();
}

class _SettingLangDownState extends State<SettingLangDown> {
  String _language = "English";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        children: [
          NewCoustomText(
            text: "Language",
            fontsize: 20.0,
            fontWeight: FontWeight.bold,
            color: newblacklinergradient.colors,
            shadowoffset: Offset(2.0, 4.0),
            shawdowcolor: Color.fromARGB(33, 51, 51, 51),
            shawdowradius: .5,
          ),
          SizedBox(width: 110),
          SettingLanguageDropDown(
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
    );
  }
}
