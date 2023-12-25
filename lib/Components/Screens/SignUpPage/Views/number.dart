import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Utils/global.dart';

class Number extends StatefulWidget {
  const Number({super.key});

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  String? number;
  TextEditingController number_c = TextEditingController();
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
      body: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: h * .4,
              width: w,
              color: Colors.grey,
            ),
            SizedBox(
              height: h * .018,
            ),
            Text(
              "Enter Number",
              style: Global.size16b,
            ),
            SizedBox(
              height: h * .01,
            ),
            Container(
              height: h * .07,
              width: w,
              child: TextFormField(
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter number";
                  } else {
                    return null;
                  }
                },
                controller: number_c,
                onSaved: (val) {
                  number = val!;
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "+91 xxxxxxxxxx ",
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
              height: h * .25,
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed('/otp');
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
                  "Verify Continue",
                  style: Global.size19,
                ),
              ),
            ),
            SizedBox(
              height: h * .01,
            ),
          ],
        ),
      ),
    );
  }
}
