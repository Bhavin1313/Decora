import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utils/global.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? email;
  String? pass;
  TextEditingController email_c = TextEditingController();
  TextEditingController pass_c = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
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
          "Choose Payment Method",
          style: Global.size19,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Traditional Transfar",
              style: Global.size20,
            ),
            SizedBox(
              height: h * .02,
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: h * .07,
              width: w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Color(0xffFFFFFF),
              ),
              child: Row(
                children: [
                  Text(
                    "Bank Transfar",
                    style: Global.size15black,
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * .03,
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
                      "UPI",
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
              height: h * .02,
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: h * .07,
              width: w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Color(0xffFFFFFF),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    foregroundImage: NetworkImage(
                      "https://pixlok.com/wp-content/uploads/2021/01/UPI_logo_PNG-300x300.jpg",
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Add new UPI ID",
                    style: Global.size15black,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * .02,
            ),
            Row(
              children: [
                Expanded(
                  flex: 10,
                  child: Divider(),
                ),
                Expanded(
                  flex: 7,
                  child: Center(
                    child: Text(
                      "WALLETS",
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
              height: h * .02,
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: h * .07,
              width: w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Color(0xffFFFFFF),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://w7.pngwing.com/pngs/173/994/png-transparent-paytm-social-icons-color-icon.png",
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Paytm",
                    style: Global.size15black,
                  ),
                ],
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Get.toNamed('/paymentsuccess');
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
                  "Pay",
                  style: Global.size19white,
                ),
              ),
            ),
            SizedBox(
              height: h * .03,
            ),
          ],
        ),
      ),
    );
  }
}
