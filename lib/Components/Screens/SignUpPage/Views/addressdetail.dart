import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Utils/global.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  String? address;
  String? state;
  String? zip;
  TextEditingController address_c = TextEditingController();
  TextEditingController state_c = TextEditingController();
  TextEditingController zip_c = TextEditingController();
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
        child: Container(
          padding: EdgeInsets.all(18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: h * .009,
                ),
                Container(
                  height: h * .4,
                  width: w,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: h * .018,
                ),
                Container(
                  height: h * .07,
                  width: w,
                  child: TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter Address";
                      } else {
                        return null;
                      }
                    },
                    controller: address_c,
                    onSaved: (val) {
                      address = val!;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Enter Address",
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
                Container(
                  height: h * .07,
                  width: w,
                  child: TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter State";
                      } else {
                        return null;
                      }
                    },
                    controller: state_c,
                    onSaved: (val) {
                      state = val!;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "State",
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
                Container(
                  height: h * .07,
                  width: w,
                  child: TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter Zip Code";
                      } else {
                        return null;
                      }
                    },
                    controller: zip_c,
                    onSaved: (val) {
                      zip = val!;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Enter Password ",
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
                  height: h * .1,
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/gender');
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
                  height: h * .01,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
