import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Utils/global.dart';
import '../../../../Helpers/ApiHelper/api_helper.dart';
import '../../../../Model/CategoryModel/catagorymodel.dart';
import '../../../ThemeDetail/list1.dart';
import 'likelist.dart';

class Like extends StatefulWidget {
  const Like({super.key});

  @override
  State<Like> createState() => _LikeState();
}

class _LikeState extends State<Like> {
  Connectivity connectivity = Connectivity();
  bool liked = false;
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
          "Liked",
          style: Global.size23,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: addtheme.isNotEmpty
                    ? Column(
                        children: [
                          ...addtheme
                              .map(
                                (e) => Card(
                                  elevation: 0,
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    height: h * .289,
                                    width: w * .5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xffFFFFFF),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              height: h * .18,
                                              width: w * .45,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      "${e['img']}"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: h * .01,
                                              right: w * .02,
                                              child: CircleAvatar(
                                                radius: 15,
                                                backgroundColor: Colors.white,
                                                child: GestureDetector(
                                                  onTap: () {},
                                                  child: Icon(
                                                    Icons.favorite,
                                                    color: Color(0xffFC2424),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: h * .04,
                                          width: w,
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "${e['name']}",
                                            style: Global.size12black,
                                          ),
                                        ),
                                        Text(
                                          "Starting",
                                          style: Global.size12jost,
                                        ),
                                        Text(
                                          "₹ 25000",
                                          style: Global.size15Montserrat,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ],
                      )
                    : Center(
                        child: Container(
                          height: 300,
                          width: 300,
                          child: Center(
                            child: Text(""),
                          ),
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
