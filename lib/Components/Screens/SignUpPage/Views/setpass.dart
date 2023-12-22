import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Utils/global.dart';

class SetPassworld extends StatefulWidget {
  const SetPassworld({super.key});

  @override
  State<SetPassworld> createState() => _SetPassworldState();
}

class _SetPassworldState extends State<SetPassworld> {
  String? newpass;
  String? pass;
  TextEditingController newpass_c = TextEditingController();
  TextEditingController pass_c = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF9FAF1),
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Color(0xffF9FAF1),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Container(
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
                      "Set Password?",
                      style: Global.size30,
                    ),
                    SizedBox(
                      height: h * .01,
                    ),
                    Text(
                      "Set the password for sign up",
                      style: Global.size15,
                    ),
                    Text(
                      "and access all the features",
                      style: Global.size15,
                    ),
                    SizedBox(
                      height: h * .1,
                    ),
                    Container(
                      height: h * .07,
                      width: w,
                      child: TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Password";
                          } else {
                            return null;
                          }
                        },
                        controller: pass_c,
                        onSaved: (val) {
                          pass = val!;
                        },
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: Color(0xff888888),
                            ),
                          ),
                          filled: true,
                          fillColor: Color(0xffF9FAF1),
                          hintText: "Enter New Password",
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
                      height: h * .02,
                    ),
                    Container(
                      height: h * .07,
                      width: w,
                      child: TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Password";
                          } else {
                            return null;
                          }
                        },
                        controller: newpass_c,
                        onSaved: (val) {
                          newpass = val!;
                        },
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: Color(0xff888888),
                            ),
                          ),
                          filled: true,
                          fillColor: Color(0xffF9FAF1),
                          hintText: "Confirm Password",
                          hintStyle: Global.size16,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Color(0xff888888),
                            ),
                          ),
                        ),
                      ),
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
                          "Confirm",
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
                    image: AssetImage("lib/Assets/image 2.png"),
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
