import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:in_lisson/utils/my_icon.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 13),
                child: Center(
                  child: Container(
                    height: 80,
                    child: Stack(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          child: Image.asset(MyIcon.imageProfile),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 29,
                              width: 29,
                              child: SvgPicture.asset(MyIcon.camera),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              Text(
                "Muzafarov Firdavs",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Color(0xFF211F2A),
                ),
              ),
              SizedBox(
                height: 44,
              ),
              getUI1(
                  icon: MyIcon.icon1,
                  text: "Update NM Information",
                  back: true),
              getUI1(icon: MyIcon.icon2, text: "Verify NM pay", back: true),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Container(
                  height: 1,
                  color: Color(0xFFE1E8ED),
                ),
              ),
              getUI1(
                  icon: MyIcon.icon3, text: "Connection with bank", back: true),
              getUI1(
                  icon: MyIcon.icon4, text: "Application settings", back: true),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Container(
                  height: 1,
                  color: Color(0xFFE1E8ED),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "SECURITY",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              getUI1(icon: MyIcon.icon5, text: "Change PIN", back: true),
              getUI1(icon: MyIcon.icon6, text: "Touch ID", back: false),
              getUI1(icon: MyIcon.icon6, text: "Help & support", back: true),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 60,
                  child: Text(
                    "Log out",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xFFFF3D00)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getUI1({
    required String icon,
    required String text,
    required bool back,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        children: [
          SvgPicture.asset(icon),
          SizedBox(
            width: 6,
          ),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Color(0xFF211F2A),
            ),
          ),
          Spacer(),
          SvgPicture.asset(back ? MyIcon.back : MyIcon.switchch),
          SizedBox(
            width: 16,
          ),
        ],
      ),
    );
  }
}
