import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Utils/global.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Connectivity connectivity = Connectivity();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffEFC776),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            height: 50,
            width: 38,
            decoration: BoxDecoration(
              color: Color(0xffE3E3E3),
              borderRadius: BorderRadius.circular(8),
            ),
            child: GestureDetector(
              child: Icon(
                Icons.notifications_outlined,
                color: Color(0xff6E6E6E),
              ),
            ),
          ),
        ],
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
          "Profile",
          style: Global.size23,
        ),
      ),
      body: Center(
        child: Container(
          width: w * .95,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: 28,
                      bottom: 10,
                    ),
                    height: h * .3,
                    width: w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                      color: Color(0xffEFC776),
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            "lib/Assets/Raj.jpeg",
                          ),
                        ),
                        SizedBox(
                          height: h * .015,
                        ),
                        Text(
                          "Raj Koladiya",
                          style: Global.size22white,
                        ),
                        SizedBox(
                          height: h * .015,
                        ),
                        Text(
                          "rajKoladiya@gmail.com",
                          style: Global.size15white,
                        ),
                        SizedBox(
                          height: h * .007,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(18),
                    height: h * .55,
                    width: w,
                    decoration: BoxDecoration(
                      color: Color(0xffF9F9F9),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: h * .07,
                          width: w,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Icon(
                                Icons.request_page,
                                color: Color(0xff6B6B6B),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "My Request",
                                style: Global.size17black,
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: Color(0xff6B6B6B),
                                size: 17,
                                weight: 6,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: h * .07,
                          width: w,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Icon(
                                Icons.event_note,
                                color: Color(0xff6B6B6B),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "My Event Details",
                                style: Global.size17black,
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: Color(0xff6B6B6B),
                                size: 17,
                                weight: 6,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: h * .07,
                          width: w,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Icon(
                                Icons.settings,
                                color: Color(0xff6B6B6B),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Setting",
                                style: Global.size17black,
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: Color(0xff6B6B6B),
                                size: 17,
                                weight: 6,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: h * .07,
                          width: w,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Icon(
                                Icons.message,
                                color: Color(0xff6B6B6B),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "My Messages",
                                style: Global.size17black,
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: Color(0xff6B6B6B),
                                size: 17,
                                weight: 6,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: h * .07,
                          width: w,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                color: Color(0xff6B6B6B),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Payment Details",
                                style: Global.size17black,
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: Color(0xff6B6B6B),
                                size: 17,
                                weight: 6,
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.offNamedUntil('/login', (route) => false);
                          },
                          child: Container(
                            height: h * .07,
                            width: w,
                            decoration: BoxDecoration(
                              color: Color(0xffEFC776),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Log Out",
                              style: Global.size20white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
