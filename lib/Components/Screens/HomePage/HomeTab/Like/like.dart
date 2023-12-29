import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Utils/global.dart';

class Like extends StatefulWidget {
  const Like({super.key});

  @override
  State<Like> createState() => _LikeState();
}

class _LikeState extends State<Like> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: Color(0xffF9F9F9),
        centerTitle: true,
        leading: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xffE3E3E3),
            borderRadius: BorderRadius.circular(8),
          ),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: Color(0xff6E6E6E),
            ),
          ),
        ),
        title: Text(
          "Liked",
          style: Global.size23,
        ),
      ),
      body: Center(
        child: Text(
          "Like",
          style: Global.size35,
        ),
      ),
    );
  }
}
