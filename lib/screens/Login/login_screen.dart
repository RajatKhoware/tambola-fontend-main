import 'package:flutter/material.dart';
import 'package:tambola_frontend/constants/colors.dart';
import 'package:tambola_frontend/constants/gradients.dart';
import 'package:tambola_frontend/services/auth_service.dart';
import 'package:tambola_frontend/widgets/build_text_field.dart';
import 'package:tambola_frontend/widgets/custom_text.dart';
import 'package:tambola_frontend/widgets/customized_button.dart';
import 'package:tambola_frontend/widgets/gradient_text.dart';
import 'package:tambola_frontend/widgets/heading_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        decoration: const BoxDecoration(gradient: blueLiner2Gradient),
        child: ListView(children: [
          const Center(child: HeadingText()),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: CoustomGradientText(
              text: 'WELCOME',
              gradient: fireLinearGradient,
              style: CustomTextStyle(fontWeight: FontWeight.w600, fontSize: 25),
            ),
          ),
          const SizedBox(height: 30),
          const Center(
            child: CoustomGradientText(
              text: 'Login / Sign up',
              gradient: fireLinearGradient,
              style: CustomTextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 21,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          BuildTextField(
            label: 'EMAIL / MOBILE NO.',
            hintText: 'ENTER YOUR EMAIL OR MOBILE NUMBER',
            textGradient: fireLinearGradient,
            controller: _usernameController,
          ),
          const SizedBox(
            height: 35,
          ),
          BuildTextField(
              label: 'PASSWORD',
              hintText: 'PASSWORD',
              type: TextInputType.visiblePassword,
              textGradient: fireLinearGradient,
              controller: _passwordController),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomizedButton(
                  buttonBackgroundGradient: blackLinear,
                  buttonGradient: fireLinearGradient,
                  buttonText: "LOGIN",
                  fontSize: 15,
                  textColor: inactiveButtonColor,
                  horizontalPadding: 25,
                  handleClick: () {
                    _auth.signInWithUsernameOrPhone(
                        username: _usernameController.text,
                        password: _passwordController.text,
                        context: context);
                  }),
              const SizedBox(width: 30),
              CustomizedButton(
                  buttonBackgroundGradient: fireLinearGradient,
                  buttonGradient: blackLinear,
                  buttonText: "SIGN UP",
                  fontSize: 15,
                  textColor: activeButtonColor2,
                  horizontalPadding: 15,
                  handleClick: () {
                    Navigator.pushNamed(context, '/register');
                  })
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CustomizedButton(
              buttonBackgroundGradient: fireLinearGradient,
              buttonGradient: blackLinear,
              buttonText: "Guest",
              fontSize: 15,
              textColor: activeButtonColor2,
              horizontalPadding: 15,
              handleClick: () {
                Navigator.pushNamed(context, '/bottom-bar');
              }),
          const SizedBox(
            height: 70,
          ),
          const Center(
            child: CoustomGradientText(
              text: "SIGN UP / LOGIN WITH",
              gradient: fireLinearGradient,
              style: CustomTextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.all(5),
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: const Image(
                    image: AssetImage('assets/logos/google-logo.png'),
                  )),
              const SizedBox(
                width: 30,
              ),
              Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: const CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/logos/facebook-white-logo.png'),
                  ))
            ],
          )
        ]),
      ),
    );
  }
}
