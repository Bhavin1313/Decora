import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utils/global.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({super.key});

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? name;
  String? city;
  String? location;
  String? date;
  String? time;
  String? duration;
  TextEditingController name_c = TextEditingController();
  TextEditingController city_c = TextEditingController();
  TextEditingController location_c = TextEditingController();
  TextEditingController date_c = TextEditingController();
  TextEditingController time_c = TextEditingController();
  TextEditingController duration_c = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: Color(0xffF9F9F9),
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
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.chat,
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
          "Confirmation",
          style: Global.size23,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name",
                style: Global.size20,
              ),
              SizedBox(
                height: h * .003,
              ),
              TextFormField(
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter Valid Name";
                  } else {
                    return null;
                  }
                },
                controller: name_c,
                onSaved: (val) {
                  name = val!;
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter Name",
                  hintStyle: Global.size16,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xff888888),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h * .03,
              ),
              Text(
                "City",
                style: Global.size20,
              ),
              SizedBox(
                height: h * .003,
              ),
              TextFormField(
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter Valid City";
                  } else {
                    return null;
                  }
                },
                controller: city_c,
                onSaved: (val) {
                  city = val!;
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter City",
                  hintStyle: Global.size16,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xff888888),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h * .03,
              ),
              Text(
                "Location",
                style: Global.size20,
              ),
              SizedBox(
                height: h * .003,
              ),
              TextFormField(
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter Valid Location";
                  } else {
                    return null;
                  }
                },
                controller: location_c,
                onSaved: (val) {
                  location = val!;
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter Location",
                  hintStyle: Global.size16,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xff888888),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h * .03,
              ),
              Text(
                "Date",
                style: Global.size20,
              ),
              SizedBox(
                height: h * .003,
              ),
              TextFormField(
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter Valid Date";
                  } else {
                    return null;
                  }
                },
                controller: date_c,
                onSaved: (val) {
                  date = val!;
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter Date",
                  hintStyle: Global.size16,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xff888888),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h * .03,
              ),
              Text(
                "Time",
                style: Global.size20,
              ),
              SizedBox(
                height: h * .003,
              ),
              TextFormField(
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter Valid Time";
                  } else {
                    return null;
                  }
                },
                controller: time_c,
                onSaved: (val) {
                  time = val!;
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter Time",
                  hintStyle: Global.size16,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xff888888),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h * .03,
              ),
              Text(
                "Time Duration",
                style: Global.size20,
              ),
              SizedBox(
                height: h * .003,
              ),
              TextFormField(
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter Valid Time Duration";
                  } else {
                    return null;
                  }
                },
                controller: duration_c,
                onSaved: (val) {
                  duration = val!;
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter Time Duration",
                  hintStyle: Global.size16,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xff888888),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h * .03,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/payment');
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
                    "Continue To Pay ",
                    style: Global.size19white,
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
