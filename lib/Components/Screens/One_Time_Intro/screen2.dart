import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../Utils/global.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                ),
                image: DecorationImage(
                    image:
                        AssetImage("lib/Assets/1_pBwpNXRuMrBkI49kPUEaLQ 1.png"),
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
                    "Seamless Rentals, Endless",
                    style: Global.size22,
                  ),
                  Text(
                    "Memories For You",
                    style: Global.size22,
                  ),
                  SizedBox(
                    height: h * .02,
                  ),
                  Text(
                    "Endless Option One Simple Search. Find your ",
                    style: Global.size12,
                  ),
                  Text(
                    "Perfect Home Away from Home.",
                    style: Global.size12,
                  ),
                  SizedBox(
                    height: h * .05,
                  ),
                  GestureDetector(
                    onTap: () async {
                      Get.offNamedUntil('/screen3', (routes) => false);
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
