import 'package:fitness/common/color_extension.dart';
import 'package:fitness/common_widget/tab_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selecTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: TColor.primaryG,
                ),
                borderRadius: BorderRadius.circular(35),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2,
                  )
                ]),
            child: Icon(
              Icons.search,
              color: TColor.white,
              size: 35,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        decoration: BoxDecoration(color: TColor.white, boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, -2))
        ]),
        height: kToolbarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TabButton(
                icon: "assets/images/home_icon.png",
                selectIcon: "assets/images/home_icon_selected.png",
                isActive: selecTab == 0,
                onTap: () {
                  selecTab = 0;
                  if (mounted) {
                    setState(() {});
                  }
                }),
            TabButton(
                icon: "assets/images/activity_icon.png",
                selectIcon: "assets/images/activity_icon_selected.png",
                isActive: selecTab == 1,
                onTap: () {
                  selecTab = 1;
                  if (mounted) {
                    setState(() {});
                  }
                }),
            const SizedBox(
              width: 40,
            ),
            TabButton(
                icon: "assets/images/camera_icon.png",
                selectIcon: "assets/images/camera_icon_selected.png",
                isActive: selecTab == 2,
                onTap: () {
                  selecTab = 2;
                  if (mounted) {
                    setState(() {});
                  }
                }),
            TabButton(
                icon: "assets/images/profile_icon.png",
                selectIcon: "assets/images/profile_icon_selected.png",
                isActive: selecTab == 3,
                onTap: () {
                  selecTab = 3;
                  if (mounted) {
                    setState(() {});
                  }
                }),
          ],
        ),
      )),
    );
  }
}