import 'package:decora/Components/Screens/ThemeDetail/list1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Utils/global.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
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
          "History",
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
                                  elevation: 3,
                                  child: Container(
                                    height: h * .18,
                                    width: w,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            margin: EdgeInsets.all(15),
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius:
                                                    BorderRadius.circular(11),
                                                image: DecorationImage(
                                                  image: NetworkImage(e['img']),
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(30),
                                                bottomRight:
                                                    Radius.circular(30),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text(
                                                    "${e['name']}",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                  Text(
                                                    "₹ ${e['price']}",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {},
                                                    child: Container(
                                                      height: 35,
                                                      width: 100,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        color:
                                                            Color(0xffE4A11B),
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "View Receipt",
                                                        style: Global.size12w,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
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
