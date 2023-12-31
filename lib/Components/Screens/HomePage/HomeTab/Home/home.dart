import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Utils/global.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '../../../../Helpers/ApiHelper/api_helper.dart';
import '../../../../Model/CategoryModel/catagorymodel.dart';
import '../Like/likelist.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Connectivity connectivity = Connectivity();
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      drawer: Container(
        color: Color(0xffFFFFFF),
        child: Drawer(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      foregroundImage: AssetImage(
                        "lib/Assets/Raj.jpeg",
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Raj Koladiya",
                          style: Global.size17black,
                        ),
                        Text(
                          "rajKoladiya@gmail.com",
                          style: Global.size12,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.home_outlined,
                      size: 30,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Home",
                      style: Global.size17black,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_month,
                      size: 30,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "My Event",
                      style: Global.size17black,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.payments,
                      size: 30,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Payment Info",
                      style: Global.size17black,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.settings,
                      size: 30,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Settings",
                      style: Global.size17black,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.support_agent,
                      size: 30,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Support",
                      style: Global.size17black,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Get.offNamedUntil('/login', (route) => false);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        size: 30,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Logout",
                        style: Global.size17black,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xffF9F9F9),
        title: Text(
          "Hi, Raj Koladiya!",
          style: Global.size18black,
        ),
      ),
      body: StreamBuilder(
        stream: connectivity.onConnectivityChanged,
        builder: (
          BuildContext context,
          AsyncSnapshot<ConnectivityResult> snapshot,
        ) {
          return (snapshot.data == ConnectivityResult.mobile ||
                  snapshot.data == ConnectivityResult.wifi)
              ? FutureBuilder(
                  future: Api_Helper.api.fetchCatagory(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    } else if (snapshot.hasData) {
                      List<Catagory_Model>? catagory = snapshot.data;
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "lib/Assets/833a34153d 1.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Expanded(
                              flex: 3,
                              child: GridView.builder(
                                  shrinkWrap: true,
                                  itemCount: catagory!.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisExtent: 248,
                                    crossAxisSpacing: 0,
                                  ),
                                  itemBuilder: (ctx, i) {
                                    return GestureDetector(
                                      onTap: () {
                                        Get.toNamed(
                                          'catd',
                                          arguments: catagory![i],
                                        );
                                      },
                                      child: Card(
                                        elevation: 0,
                                        child: Container(
                                          padding: EdgeInsets.all(5),
                                          height: h * .289,
                                          width: w * .5,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
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
                                                          BorderRadius.circular(
                                                              8),
                                                      image: DecorationImage(
                                                        image: NetworkImage(
                                                            "${catagory[i].img}"),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: h * .01,
                                                    right: w * .02,
                                                    child: CircleAvatar(
                                                      radius: 15,
                                                      backgroundColor:
                                                          Colors.white,
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          if (!like.contains(
                                                              catagory[i])) {
                                                            like.add(
                                                                catagory[i]);

                                                            setState(() {
                                                              liked = !liked;
                                                            });
                                                          }
                                                        },
                                                        child: (catagory[i] ==
                                                                true)
                                                            ? Icon(
                                                                Icons.favorite,
                                                                color: Color(
                                                                    0xffFC2424),
                                                              )
                                                            : Icon(
                                                                Icons
                                                                    .favorite_border,
                                                                color: Color(
                                                                    0xffFC2424),
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
                                                  "${catagory[i].name}",
                                                  style: Global.size12black,
                                                ),
                                              ),
                                              Text(
                                                "Starting",
                                                style: Global.size12jost,
                                              ),
                                              Text(
                                                "₹ ${catagory[i].minPrice}",
                                                style: Global.size15Montserrat,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                )
              : Center(
                  child: Container(
                    height: 450,
                    width: 500,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(""), fit: BoxFit.cover),
                    ),
                  ),
                );
        },
      ),
    );
  }
}
