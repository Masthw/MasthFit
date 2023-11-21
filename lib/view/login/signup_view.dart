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
                    height: media.height * 0.02,
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
                          )),
                      Expanded(
                        child: Text(
                          "Hey there,",
                          style: TextStyle(color: TColor.gray, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
