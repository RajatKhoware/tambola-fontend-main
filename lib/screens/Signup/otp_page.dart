import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tambola_frontend/models/user.dart' as user_model;
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/screens/Signup/password_page.dart';
import 'package:tambola_frontend/utils/showSnackBar.dart';
import 'package:tambola_frontend/widgets/build_text_field.dart';
import 'package:tambola_frontend/widgets/custom_text.dart';
import 'package:tambola_frontend/widgets/customized_button.dart';
import 'package:tambola_frontend/widgets/gradient_text.dart';
import 'package:tambola_frontend/widgets/heading_text.dart';

class OTPPage extends StatefulWidget {
  //final User user;
  final String mobile;
  const OTPPage({required this.mobile, Key? key}) : super(key: key);

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _otpController = TextEditingController();
  String _verifID = "";
  int screenState = 0;

  @override
  void initState() {
    //get the phone number from user object before build method to verify the number
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      user_model.User currentUser =
          Provider.of<user_model.User>(context, listen: false);
      debugPrint(currentUser.mobile.toString());
      //call method to verify the phone number
      _verifyPhone(currentUser.mobile.toString());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        //adding the background image
        child: Container(
          height: size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/background.png',
                ),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              //adding the infographic
              const Image(image: AssetImage('assets/videos/info4.gif')),
              Expanded(child: Container()),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                margin: const EdgeInsets.only(bottom: 0),
                height: size.height * 0.42,
                //adding shape to the container
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    gradient: fireLinearGradient),
                child: Column(children: [
                  const Center(
                    child: HeadingText(
                      fontSize: 65,
                      textGradient: blueLiner2Gradient,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const CoustomGradientText(
                    text: 'Sign up',
                    gradient: blueLiner2Gradient,
                    style: CustomTextStyle(
                        fontWeight: FontWeight.w600, fontSize: 21),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Consumer<user_model.User>(builder: (context, value, child) {
                    return Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: formKey,
                      child: Column(
                        children: [
                          BuildTextField(
                            controller: _otpController,
                            type: TextInputType.number,
                            maxLength: 6,
                            label: 'ENTER OTP SENT',
                            hintText: 'ENTER OTP',
                            color: const Color.fromARGB(255, 255, 225, 115),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomizedButton(
                              buttonBackgroundGradient: blueLiner2Gradient,
                              buttonGradient: fireLinearGradient,
                              buttonText: "Login",
                              handleClick: () {
                                if (formKey.currentState!.validate()) {
                                  value.name = _otpController.text;
                                }
                                _verifyOTP(_otpController);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            const PasswordPage())));
                              })
                        ],
                      ),
                    );
                  }),
                  const SizedBox(
                    height: 10,
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

//firebase method to verify the phone number and send the otp
  _verifyPhone(String phoneNumber) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        timeout: const Duration(seconds: 60),
        phoneNumber: "+91$phoneNumber",
        verificationCompleted: (PhoneAuthCredential credential) {
          //signing the user
          FirebaseAuth.instance
              .signInWithCredential(credential)
              .then((value) async {
            if (value.user != null) {
              showSnackBarText(context, "User Authenticated!");
            }
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          showSnackBarText(context, "Authentication Failed");
        },
        codeSent: (String verficationID, int? resendToken) {
          showSnackBarText(context, "OTP sent to the number");
          setState(() {
            _verifID = verficationID;
            screenState = 1;
          });
        },
        codeAutoRetrievalTimeout: (String verifID) {
          setState(() {
            _verifID = verifID;
          });
          showSnackBarText(context, "Timeout!");
        });
  }

//verifying the entered otp against the user entered otp
  Future<void> _verifyOTP(value) async {
    await FirebaseAuth.instance
        .signInWithCredential(PhoneAuthProvider.credential(
            verificationId: _verifID, smsCode: _otpController.text))
        .whenComplete(() {
      showSnackBarText(context, "OTP verified!");
    });
  }
}
