import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Utils/global.dart';

class EnterGmail extends StatefulWidget {
  const EnterGmail({super.key});

  @override
  State<EnterGmail> createState() => _EnterGmailState();
}

class _EnterGmailState extends State<EnterGmail> {
  String? email;
  String? pass;
  TextEditingController email_c = TextEditingController();
  TextEditingController pass_c = TextEditingController();
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
          children: [
            Expanded(
              flex: 10,
              child: Container(
                padding: EdgeInsets.all(18),
                height: h,
                width: w,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: h * .008,
                      ),
                      Center(
                        child: Container(
                          height: h * .15,
                          width: w * .29,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("lib/Assets/Group 426.png"),
                            fit: BoxFit.cover,
                          )),
                        ),
                      ),
                      SizedBox(
                        height: h * .003,
                      ),
                      Center(
                        child: Text(
                          "Welcome to Decora",
                          style: Global.size35,
                        ),
                      ),
                      SizedBox(
                        height: h * .018,
                      ),
                      Text(
                        "To get started, what’s your email?",
                        style: Global.size15,
                      ),
                      SizedBox(
                        height: h * .015,
                      ),
                      Container(
                        height: h * .07,
                        width: w,
                        child: TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter Valid email";
                            } else {
                              return null;
                            }
                          },
                          controller: email_c,
                          onSaved: (val) {
                            email = val!;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Enter your email",
                            hintStyle: Global.size16,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                color: Color(0xffB8B8B8),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .015,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('otp');
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
                            "Continue",
                            style: Global.size19,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "By tapping Continue,I accept Castel’s ",
                            style: Global.size12,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Terms of Use",
                              style: Global.size12yellow,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * .05,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 10,
                            child: Divider(),
                          ),
                          Expanded(
                            flex: 3,
                            child: Center(
                              child: Text(
                                "Or",
                                style: Global.size15,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 10,
                            child: Divider(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * .05,
                      ),
                      Container(
                        height: h * .05,
                        width: w,
                        decoration: BoxDecoration(
                          color: Color(0xff000000),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.apple,
                              color: Color(0xffFFFFFF),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Continue with Apple",
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontSize: 15,
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h * .02,
                      ),
                      Container(
                        height: h * .05,
                        width: w,
                        decoration: BoxDecoration(
                          color: Color(0xff0862F7),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.facebook,
                              color: Color(0xffFFFFFF),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Continue with Facebook",
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontSize: 15,
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h * .02,
                      ),
                      Container(
                        height: h * .05,
                        width: w,
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage("lib/Assets/download1.png"),
                              )),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Continue with Google",
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontSize: 15,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
