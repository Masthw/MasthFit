import 'package:fitness/common_widget/round_button.dart';
import 'package:fitness/common_widget/round_textField.dart';
import 'package:fitness/view/login/complete_profile_view.dart';
import 'package:fitness/view/login/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../common/color_extension.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: media.height,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: media.height * 0.01,
                  ),
                  Text(
                    "Hey there,",
                    style: TextStyle(color: TColor.black, fontSize: 16),
                  ),
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                        color: TColor.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: media.height * 0.03,
                  ),
                  const RoundTextField(
                    hintText: "Email",
                    icon: "assets/images/email.png",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: media.height * 0.02,
                  ),
                  RoundTextField(
                    hintText: "Password",
                    icon: "assets/images/lock.png",
                    obscureText: true,
                    rightIcon: TextButton(
                        onPressed: () {},
                        child: Container(
                            alignment: Alignment.center,
                            width: 20,
                            height: 20,
                            child: Image.asset(
                              "assets/images/show_password.png",
                              width: 20,
                              height: 20,
                              fit: BoxFit.contain,
                              color: TColor.gray,
                            ))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Expanded(
                          child: Text(
                            "Forgot your password?",
                            style: TextStyle(
                                color: TColor.gray,
                                fontSize: 10,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  RoundButton(
                      title: "Login",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CompleteProfileView()));
                      }),
                  SizedBox(
                    height: media.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          height: 1,
                          color: TColor.gray.withOpacity(0.5),
                        )),
                        Text(
                          "     Or     ",
                          style: TextStyle(
                              color: TColor.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        Expanded(
                            child: Container(
                                height: 1,
                                color: TColor.gray.withOpacity(0.5))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: media.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: TColor.white,
                                border: Border.all(
                                    width: 1,
                                    color: TColor.gray.withOpacity(0.4)),
                                borderRadius: BorderRadius.circular(15)),
                            child: Image.asset(
                              "assets/images/google-logo.png",
                              width: 20,
                              height: 20,
                            ),
                          )),
                      SizedBox(
                        width: media.width * 0.1,
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: TColor.white,
                                border: Border.all(
                                    width: 1,
                                    color: TColor.gray.withOpacity(0.4)),
                                borderRadius: BorderRadius.circular(15)),
                            child: Image.asset(
                              "assets/images/facebook_logo.png",
                              width: 20,
                              height: 20,
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: media.height * 0.01,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Don't have an account yet? ",
                          style: TextStyle(
                            color: TColor.black,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "Register",
                          style: TextStyle(
                              color: TColor.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
