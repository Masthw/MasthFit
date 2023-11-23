import 'package:fitness/common_widget/round_button.dart';
import 'package:fitness/common_widget/round_textField.dart';
import 'package:fitness/view/login/what_your_goal_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../common/color_extension.dart';

class CompleteProfileView extends StatefulWidget {
  const CompleteProfileView({super.key});

  @override
  State<CompleteProfileView> createState() => _CompleteProfileViewState();
}

class _CompleteProfileViewState extends State<CompleteProfileView> {
  TextEditingController txtDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/profile_page.png",
                    width: media.width,
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(
                    height: media.height * 0.01,
                  ),
                  Text(
                    "Let's complete your profile",
                    style: TextStyle(
                        color: TColor.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "It will help us to know more about you!",
                    style: TextStyle(color: TColor.gray, fontSize: 13),
                  ),
                  SizedBox(
                    height: media.height * 0.03,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: TColor.lightGray,
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  width: 50,
                                  height: 50,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Image.asset(
                                    "assets/images/users.png",
                                    width: 20,
                                    height: 20,
                                    fit: BoxFit.contain,
                                    color: TColor.gray,
                                  )),
                              Expanded(
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    items: ["Male", "Female", "Other"]
                                        .map((name) => DropdownMenuItem(
                                              value: name,
                                              child: Text(
                                                name,
                                                style: TextStyle(
                                                    color: TColor.gray,
                                                    fontSize: 14),
                                              ),
                                            ))
                                        .toList(),
                                    onChanged: (value) {},
                                    isExpanded: true,
                                    hint: Text(
                                      "Choose Gender",
                                      style: TextStyle(
                                          color: TColor.gray, fontSize: 12),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: media.height * 0.02,
                        ),
                        RoundTextField(
                            controller: txtDate,
                            hintText: "Date of Birth",
                            icon: "assets/images/Calendar.png"),
                        SizedBox(
                          height: media.height * 0.02,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: RoundTextField(
                                controller: txtDate,
                                hintText: "Your Weight",
                                icon: "assets/images/weight-scale 1.png",
                              ),
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  gradient:
                                      LinearGradient(colors: TColor.secondaryG),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Text(
                                "KG",
                                style: TextStyle(
                                    color: TColor.white, fontSize: 12),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: media.height * 0.02,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: RoundTextField(
                                controller: txtDate,
                                hintText: "Your Height",
                                icon: "assets/images/Swap.png",
                              ),
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  gradient:
                                      LinearGradient(colors: TColor.secondaryG),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Text(
                                "CM",
                                style: TextStyle(
                                    color: TColor.white, fontSize: 12),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: media.width * 0.025,
                        ),
                        RoundButton(
                            title: "Next >",
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const WhatYourGoalView()));
                            }),
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
