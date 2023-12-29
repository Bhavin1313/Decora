import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utils/global.dart';

class PaySuccssess extends StatefulWidget {
  const PaySuccssess({super.key});

  @override
  State<PaySuccssess> createState() => _PaySuccssessState();
}

class _PaySuccssessState extends State<PaySuccssess> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    Timer(
      const Duration(seconds: 2),
      () {
        Get.offNamedUntil('/home', (routes) => false);
      },
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Color(0xffE4A11B).withOpacity(.1),
              child: CircleAvatar(
                radius: 51,
                backgroundColor: Color(0xffE4A11B).withOpacity(.3),
                child: CircleAvatar(
                  radius: 42,
                  backgroundColor: Color(0xffE4A11B).withOpacity(.5),
                  child: CircleAvatar(
                    radius: 33,
                    backgroundColor: Color(0xffE4A11B),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 45,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: h * .05,
            ),
            Text(
              "Congratulations!",
              style: Global.size30,
            ),
            SizedBox(
              height: h * .01,
            ),
            Text(
              "Your Payment is Successful",
              style: Global.size25C,
            ),
          ],
        ),
      ),
    );
  }
}
