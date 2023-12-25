import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    Timer(
      const Duration(seconds: 4),
      () {
        Get.offNamedUntil('/login', (routes) => false);
      },
    );
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "lib/Assets/image 5.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          height: h,
          width: w,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(.4),
          ),
          alignment: Alignment.center,
          child: Container(
            height: h * .3,
            width: w * .5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "lib/Assets/Group 426.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
