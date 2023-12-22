import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../Utils/global.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                ),
                image: DecorationImage(
                    image: AssetImage("lib/Assets/image 1.png"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(18),
              child: Column(
                children: [
                  SizedBox(
                    height: h * .02,
                  ),
                  Text(
                    "Discover a Better Way to",
                    style: Global.size22,
                  ),
                  Text(
                    "Rent your Perfect Home.",
                    style: Global.size22,
                  ),
                  SizedBox(
                    height: h * .02,
                  ),
                  Text(
                    "Discover Countless Homes and Properties, ",
                    style: Global.size12,
                  ),
                  Text(
                    "Tailored to Your Every Need.",
                    style: Global.size12,
                  ),
                  SizedBox(
                    height: h * .05,
                  ),
                  GestureDetector(
                    onTap: () async {
                      Get.offNamedUntil('/screen2', (routes) => false);
                      SharedPreferences preferences =
                          await SharedPreferences.getInstance();
                      preferences.setBool("visited", true);
                    },
                    child: Container(
                      height: h * .07,
                      width: w,
                      decoration: BoxDecoration(
                        color: Color(0xffE4A11B),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Next",
                            style: Global.size19,
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.black,
                            size: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * .05,
                  ),
                  GestureDetector(
                    onTap: () async {
                      Get.offNamedUntil('/splash', (routes) => false);
                      SharedPreferences preferences =
                          await SharedPreferences.getInstance();
                      preferences.setBool("visited", true);
                    },
                    child: Text(
                      "Skip",
                      style: Global.size15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
