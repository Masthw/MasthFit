import 'package:fitness/common_widget/round_button.dart';
import 'package:fitness/common_widget/round_textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../common/color_extension.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
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
                    "Create an Account",
                    style: TextStyle(
                        color: TColor.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: media.height * 0.03,
                  ),
                  const RoundTextField(
                    hintText: "First Name",
                    icon: "assets/images/profile_person.png",
                  ),
                  SizedBox(
                    height: media.height * 0.02,
                  ),
                  const RoundTextField(
                    hintText: "Last Name",
                    icon: "assets/images/profile_person.png",
                  ),
                  SizedBox(
                    height: media.height * 0.02,
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
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              isCheck = !isCheck;
                            });
                          },
                          icon: Icon(
                            isCheck
                                ? Icons.check_box_rounded
                                : Icons.check_box_outline_blank_outlined,
                            color: TColor.gray,
                            size: 20,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Expanded(
                          child: Text(
                            "By continuing you accept our Privacy Policy and\n Terms of Use",
                            style: TextStyle(color: TColor.gray, fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: media.height * 0.13,
                  ),
                  RoundButton(title: "Register", onPressed: () {}),
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
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Already have an account? ",
                          style: TextStyle(
                            color: TColor.black,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "Login",
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
