import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tambola_frontend/constants/colors.dart';
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/models/user.dart';
import 'package:tambola_frontend/services/auth_service.dart';
import 'package:tambola_frontend/widgets/build_text_field.dart';
import 'package:tambola_frontend/widgets/custom_text.dart';
import 'package:tambola_frontend/widgets/customized_button.dart';
import 'package:tambola_frontend/widgets/gradient_text.dart';
import 'package:tambola_frontend/widgets/heading_text.dart';

TextEditingController _passwordController = TextEditingController();
TextEditingController _promoController = TextEditingController();
GlobalKey<FormState> formKey = GlobalKey<FormState>();
AuthService authService = AuthService();

class PasswordPage extends StatelessWidget {
  //final User user;
  const PasswordPage({Key? key}) : super(key: key);

  void signUpUser(context, name, mobile, password) {
    authService.signUpWithPhone(
        context: context, name: name, mobile: mobile, password: password);
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
              const Image(image: AssetImage('assets/videos/info5.gif')),
              //space for the signup container
              Expanded(child: Container()),

              //curved container
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                margin: const EdgeInsets.only(bottom: 0),
                height: 355,
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
                  const SizedBox(
                    height: 5,
                  ),
                  Consumer<User>(
                    builder: ((context, value, child) {
                      //form to collect the value
                      return Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        key: formKey,
                        child: Column(
                          children: [
                            BuildTextField(
                                controller: _passwordController,
                                type: TextInputType.visiblePassword,
                                label: 'SET PASSWORD',
                                hintText: 'SET PASSWORD',
                                color:
                                    const Color.fromARGB(255, 255, 225, 115)),
                            const SizedBox(
                              height: 10,
                            ),
                            BuildTextField(
                                controller: _promoController,
                                label: 'PROMO CODE',
                                hintText: 'OPTIONAL',
                                color:
                                    const Color.fromARGB(255, 255, 225, 115)),

                            //row widget for the checkbox and privacy policy
                            Row(
                              children: const [
                                Checkbox(
                                  value: true,
                                  onChanged: null,
                                  activeColor: textColor1,
                                ),
                                CoustomGradientText(
                                  text: "I AGREE TO THE PRIVACY POLICY",
                                  gradient: blackLinear,
                                  style: CustomTextStyle(
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            const Text(
                              "YOUR PERSONAL DATA WILL BE USED TO SUPPORT YOUR EXPERIENCE THOOUGHOUT THE WEBSITE, TO MANAGE ACCESS TO YOUR ACCOUNT, AND FOR OTHER PURPOSES DESCRIBED IN OUR PRIVACY POLICY",
                              style: CustomTextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 9,
                                  textColor: Colors.black87),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CustomizedButton(
                                buttonBackgroundGradient: blueLiner2Gradient,
                                buttonGradient: fireLinearGradient,
                                buttonText: "Login",
                                handleClick: () {
                                  value.password = _passwordController.text;
                                  debugPrint(
                                      " ${value.name}: ${value.mobile}: ${value.password}");
                                  signUpUser(context, value.name, value.mobile,
                                      value.password);
                                })
                          ],
                        ),
                      );
                    }),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/*GradientButton2(
                          backgroundGradient: const [
                            kBackgroundGradient1,
                            kBackgroundGradient2
                          ],
                          buttonGradient: const [
                            activeButtonColor2,
                            activeButtonColor2
                          ],
                          buttonText: "Finish",
                          textColor: kBackgroundGradient1,
                          onPressed: () {
                            print("button clicked");
                          },
                        )*/