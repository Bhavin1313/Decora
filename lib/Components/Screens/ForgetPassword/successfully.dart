import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utils/global.dart';

class Successfully extends StatefulWidget {
  const Successfully({super.key});

  @override
  State<Successfully> createState() => _SuccessfullyState();
}

class _SuccessfullyState extends State<Successfully> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
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
                      Icons.call_missed_outgoing_sharp,
                      color: Colors.white,
                      size: 35,
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
              "Your password has",
              style: Global.size15,
            ),
            Text(
              "successfully updated",
              style: Global.size15,
            ),
          ],
        ),
      ),
    );
  }
}
