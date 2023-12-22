import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Utils/global.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(18),
                height: h * .73,
                width: w,
                child: Column(
                  children: [
                    SizedBox(
                      height: h * .05,
                    ),
                    Text(
                      "Enter 4-Digit Verification Code",
                      style: Global.size25C,
                    ),
                    SizedBox(
                      height: h * .01,
                    ),
                    Text(
                      "We have sent verification",
                      style: Global.size15,
                    ),
                    Text(
                      "code to your Email Please check.",
                      style: Global.size15,
                    ),
                    SizedBox(
                      height: h * .04,
                    ),
                    Container(
                      width: w * .55,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: h * .055,
                            width: w * .1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color(0xff616161),
                              ),
                            ),
                          ),
                          Container(
                            height: h * .055,
                            width: w * .1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color(0xff616161),
                              ),
                            ),
                          ),
                          Container(
                            height: h * .055,
                            width: w * .1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color(0xff616161),
                              ),
                            ),
                          ),
                          Container(
                            height: h * .055,
                            width: w * .1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color(0xff616161),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * .03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Code expires in ",
                          style: Global.size15,
                        ),
                        Text(
                          "00:56",
                          style: Global.size15black,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * .03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Didn’t receive code ?  ",
                          style: Global.size15,
                        ),
                        Text(
                          "Resend Code",
                          style: Global.size15black,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * .1,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed('/setpass');
                      },
                      child: Container(
                        height: h * .07,
                        width: w,
                        decoration: BoxDecoration(
                          color: Color(0xffE4A11B),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Verify",
                          style: Global.size19,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * .04,
                    ),
                  ],
                ),
              ),
              Container(
                height: h * .1878,
                width: w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/Assets/image 4.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
