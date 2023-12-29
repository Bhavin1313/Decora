import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Utils/global.dart';

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      body: Container(
        padding: EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Divider(),
                  ),
                  Expanded(
                    flex: 6,
                    child: Center(
                      child: Text(
                        "Choose Your Gender",
                        style: Global.size25C,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Divider(),
                  ),
                ],
              ),
              SizedBox(
                height: h * .08,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/number');
                },
                child: Column(
                  children: [
                    Container(
                      height: h * .2,
                      width: w * .4,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("lib/Assets/male.png"),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "Male",
                      style: Global.size25C,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * .04,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/number');
                },
                child: Column(
                  children: [
                    Container(
                      height: h * .2,
                      width: w * .4,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("lib/Assets/female.png"),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "Female",
                      style: Global.size25C,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * .1,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/number');
                },
                child: Text(
                  "Other",
                  style: Global.size25C,
                ),
              ),
              SizedBox(
                height: h * .04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
