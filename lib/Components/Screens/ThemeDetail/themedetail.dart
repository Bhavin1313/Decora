import 'package:decora/Components/Screens/ThemeDetail/list1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utils/global.dart';

class ThemeDetail extends StatefulWidget {
  const ThemeDetail({super.key});

  @override
  State<ThemeDetail> createState() => _ThemeDetailState();
}

class _ThemeDetailState extends State<ThemeDetail> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
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
          "Themes Detail",
          style: Global.size23,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: h * .3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  image: DecorationImage(
                    image: NetworkImage("${data['img']}"),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: h * .03,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...data['images']
                        .map(
                          (e) => Container(
                            margin: EdgeInsets.only(right: 10),
                            height: h * .12,
                            width: w * .25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: NetworkImage(e),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ],
                ),
              ),
              SizedBox(
                height: h * .02,
              ),
              Row(
                children: [
                  Text(
                    "₹ ${data['price']}",
                    style: Global.size22,
                  ),
                  Spacer(),
                  Card(
                    elevation: 5,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                      child: GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.favorite_border,
                          color: Color(0xffFC2424),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "${data['name']}",
                style: Global.size22,
              ),
              SizedBox(
                height: h * .02,
              ),
              Text(
                "Description",
                style: Global.size17black,
              ),
              Text(
                "${data['description']}",
                style: Global.size15g,
              ),
              SizedBox(
                height: h * .05,
              ),
              GestureDetector(
                onTap: () {
                  if (!addtheme.contains(data)) {
                    addtheme.add(data);
                  }
                  Get.toNamed('/confirmation');
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
                    "Book Now",
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
