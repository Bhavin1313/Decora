import 'package:decora/Components/Screens/HomePage/HomeTab/Home/exclusivelisting.dart';
import 'package:decora/Utils/list.dart';
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
        color: Color(0xffE4E4E4),
        child: Drawer(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              CircleAvatar(
                backgroundColor: Colors.red,
                radius: 90,
                child: CircleAvatar(
                  radius: 85,
                  foregroundImage: AssetImage(
                    "lib/Assets/download1.jpg",
                  ),
                ),
              ),
              Text("NAME: John Doe"),
              Text("EMAIL: JohnDoe@gmail.com"),
            ],
          ),
        ),
      ),
      appBar: AppBar(),
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
                        child: GridView.builder(
                            shrinkWrap: true,
                            itemCount: catagory!.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: 230,
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
                                                backgroundColor: Colors.white,
                                                child: GestureDetector(
                                                  onTap: () {
                                                    if (!like.contains(
                                                        catagory[i])) {
                                                      like.add(catagory[i]);

                                                      setState(() {
                                                        liked = !liked;
                                                      });
                                                    }
                                                  },
                                                  child: (catagory[i] == true)
                                                      ? Icon(
                                                          Icons.favorite,
                                                          color:
                                                              Color(0xffFC2424),
                                                        )
                                                      : Icon(
                                                          Icons.favorite_border,
                                                          color:
                                                              Color(0xffFC2424),
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
                                          "₹ 25000",
                                          style: Global.size15Montserrat,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
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
                          image: AssetImage("lib/Assets/2.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                );
        },
      ),
    );
  }
}

// GridView.builder(
//     scrollDirection: Axis.vertical,
//     shrinkWrap: true,
//     itemCount: catagory!.length,
//     gridDelegate:
//         SliverGridDelegateWithFixedCrossAxisCount(
//       crossAxisCount: 2,
//       mainAxisExtent: 270,
//       crossAxisSpacing: 0,
//     ),
//     itemBuilder: (ctx, i) {
//       return GestureDetector(
//         onTap: () {},
//         child: Card(
//           elevation: 0,
//           child: Container(
//             padding: EdgeInsets.all(5),
//             height: h * .289,
//             width: w * .5,
//             decoration: BoxDecoration(
//               borderRadius:
//                   BorderRadius.circular(5),
//               color: Color(0xffFFFFFF),
//             ),
//             child: Column(
//               crossAxisAlignment:
//                   CrossAxisAlignment.start,
//               children: [
//                 Stack(
//                   children: [
//                     Container(
//                       height: h * .18,
//                       width: w * .45,
//                       decoration:
//                           BoxDecoration(
//                         borderRadius:
//                             BorderRadius
//                                 .circular(
//                                     8),
//                         image:
//                             DecorationImage(
//                           image: NetworkImage(
//                               "${catagory[i].themes[i]['img']}"),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       top: h * .01,
//                       right: w * .02,
//                       child: CircleAvatar(
//                         radius: 15,
//                         backgroundColor:
//                             Colors.white,
//                         child:
//                             GestureDetector(
//                           onTap: () {},
//                           child: Icon(
//                             Icons
//                                 .favorite_border,
//                             color: Color(
//                                 0xffFC2424),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   height: h * .04,
//                   width: w,
//                   alignment:
//                       Alignment.centerLeft,
//                   child: Text(
//                     "${catagory[i].themes[i]['name']}",
//                     style:
//                         Global.size12black,
//                   ),
//                 ),
//                 Text(
//                   "Starting",
//                   style: Global.size12jost,
//                 ),
//                 Text(
//                   "${catagory[i].themes[i]['price']}",
//                   style: Global
//                       .size15Montserrat,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
//     }),
// Expanded(
//   child: ListView.builder(
//       scrollDirection: Axis.horizontal,
//       itemCount: catagory!.length,
//       itemBuilder: (ctx, i) {
//         return Card(
//           elevation: 0,
//           child: Container(
//             padding: EdgeInsets.all(5),
//             height: h * .289,
//             width: w * .4,
//             decoration: BoxDecoration(
//               borderRadius:
//                   BorderRadius.circular(5),
//               color: Color(0xffFFFFFF),
//             ),
//             child: Column(
//               crossAxisAlignment:
//                   CrossAxisAlignment.start,
//               children: [
//                 Stack(
//                   children: [
//                     Container(
//                       height: h * .18,
//                       width: w * .4,
//                       decoration:
//                           BoxDecoration(
//                         borderRadius:
//                             BorderRadius
//                                 .circular(
//                                     8),
//                         image:
//                             DecorationImage(
//                           image: NetworkImage(
//                               "${catagory[i].themes[i]['img']}"),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       top: h * .01,
//                       right: w * .02,
//                       child: CircleAvatar(
//                         radius: 15,
//                         backgroundColor:
//                             Colors.white,
//                         child:
//                             GestureDetector(
//                           onTap: () {},
//                           child: Icon(
//                             Icons
//                                 .favorite_border,
//                             color: Color(
//                                 0xffFC2424),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   height: h * .04,
//                   width: w,
//                   alignment:
//                       Alignment.centerLeft,
//                   child: Text(
//                     "${catagory[i].themes[i]['name']}",
//                     style:
//                         Global.size12black,
//                   ),
//                 ),
//                 Text(
//                   "Starting",
//                   style: Global.size12jost,
//                 ),
//                 Text(
//                   "${catagory[i].themes[i]['price']}",
//                   style: Global
//                       .size15Montserrat,
//                 ),
//               ],
//             ),
//           ),
//         );
//       }),
// ),

// Container(
// child: SingleChildScrollView(
// child: Column(
// children: [
// Container(
// height: h * .4,
// width: w,
// decoration: BoxDecoration(
// color: Colors.grey,
// borderRadius: BorderRadius.circular(10),
// ),
// ),
// Container(
// padding: EdgeInsets.all(10),
// width: w,
// child: Column(
// children: [
// Row(
// children: [
// Text(
// "Exclusive Listings",
// style: Global.size20,
// ),
// Spacer(),
// Text(
// "View More",
// style: Global.size13,
// ),
// ],
// ),
// SizedBox(
// height: 5,
// ),
// SingleChildScrollView(
// scrollDirection: Axis.horizontal,
// child: MyWidgets.myrow(),
// ),
// SizedBox(
// height: 5,
// ),
// Row(
// children: [
// Text(
// "Events Category",
// style: Global.size20,
// ),
// Spacer(),
// Text(
// "View More",
// style: Global.size13,
// ),
// ],
// ),
// SizedBox(
// height: 5,
// ),
// Container(
// height: h,
// width: w,
// child: GridView.builder(
// shrinkWrap: true,
// itemCount: status.length,
// gridDelegate:
// SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 2,
// mainAxisExtent: 270,
// crossAxisSpacing: 0,
// ),
// itemBuilder: (ctx, i) {
// return Card(
// elevation: 0,
// child: Container(
// padding: EdgeInsets.all(5),
// height: h * .289,
// width: w * .5,
// decoration: BoxDecoration(
// borderRadius:
// BorderRadius.circular(5),
// color: Color(0xffFFFFFF),
// ),
// child: Column(
// crossAxisAlignment:
// CrossAxisAlignment.start,
// children: [
// Stack(
// children: [
// Container(
// height: h * .18,
// width: w * .45,
// decoration: BoxDecoration(
// borderRadius:
// BorderRadius.circular(
// 8),
// image: DecorationImage(
// image: AssetImage(
// "${status[i]['image']}"),
// fit: BoxFit.cover,
// ),
// ),
// ),
// Positioned(
// top: h * .01,
// right: w * .02,
// child: CircleAvatar(
// radius: 15,
// backgroundColor:
// Colors.white,
// child: GestureDetector(
// onTap: () {},
// child: Icon(
// Icons.favorite_border,
// color:
// Color(0xffFC2424),
// ),
// ),
// ),
// ),
// ],
// ),
// Container(
// height: h * .04,
// width: w,
// alignment: Alignment.centerLeft,
// child: Text(
// "${status[i]['name']}",
// style: Global.size12black,
// ),
// ),
// Text(
// "${status[i]['time']}",
// style: Global.size12jost,
// ),
// Text(
// "${status[i]['time']}",
// style: Global.size15Montserrat,
// ),
// ],
// ),
// ),
// );
// }),
// ),
// ],
// ),
// ),
// ],
// ),
// ),
// )

// SingleChildScrollView(
// child: Column(
// children: [
// Container(
// height: h * .4,
// width: w,
// decoration: BoxDecoration(
// color: Colors.grey,
// borderRadius: BorderRadius.circular(10),
// ),
// ),
// Padding(
//   padding: const EdgeInsets.all(8.0),
//   child: Row(
//     children: [
//       Text(
//         "Exclusive Listings",
//         style: Global.size20,
//       ),
//       Spacer(),
//       Text(
//         "View More",
//         style: Global.size13,
//       ),
//     ],
//   ),
// ),
// Padding(
//   padding: const EdgeInsets.all(10),
//   child: SingleChildScrollView(
//     scrollDirection: Axis.horizontal,
//     child: Row(
//       children: [
//         ...status
//             .map(
//               (e) => Card(
//                 elevation: 0,
//                 child: Container(
//                   padding: EdgeInsets.all(5),
//                   height: h * .289,
//                   width: w * .4,
//                   decoration: BoxDecoration(
//                     borderRadius:
//                         BorderRadius.circular(5),
//                     color: Color(0xffFFFFFF),
//                   ),
//                   child: Column(
//                     crossAxisAlignment:
//                         CrossAxisAlignment.start,
//                     children: [
//                       Stack(
//                         children: [
//                           Container(
//                             height: h * .18,
//                             width: w * .4,
//                             decoration:
//                                 BoxDecoration(
//                               borderRadius:
//                                   BorderRadius
//                                       .circular(8),
//                               image:
//                                   DecorationImage(
//                                 image: AssetImage(
//                                     "${e['image']}"),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                           Positioned(
//                             top: h * .01,
//                             right: w * .02,
//                             child: CircleAvatar(
//                               radius: 15,
//                               backgroundColor:
//                                   Colors.white,
//                               child:
//                                   GestureDetector(
//                                 onTap: () {},
//                                 child: Icon(
//                                   Icons
//                                       .favorite_border,
//                                   color: Color(
//                                       0xffFC2424),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Container(
//                         height: h * .04,
//                         width: w,
//                         alignment:
//                             Alignment.centerLeft,
//                         child: Text(
//                           "${e['name']}",
//                           style: Global.size12black,
//                         ),
//                       ),
//                       Text(
//                         "${e['time']}",
//                         style: Global.size12jost,
//                       ),
//                       Text(
//                         "${e['time']}",
//                         style:
//                             Global.size15Montserrat,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             )
//             .toList(),
//       ],
//     ),
//   ),
// ),
// Padding(
// padding: const EdgeInsets.all(10),
// child: Row(
// children: [
// Text(
// "Events Category",
// style: Global.size20,
// ),
// Spacer(),
// Text(
// "View More",
// style: Global.size13,
// ),
// ],
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(10),
// child: SingleChildScrollView(
// scrollDirection: Axis.vertical,
// child: GridView.builder(
// shrinkWrap: true,
// itemCount: catagory!.length,
// gridDelegate:
// SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 2,
// mainAxisExtent: 230,
// crossAxisSpacing: 0,
// ),
// itemBuilder: (ctx, i) {
// return GestureDetector(
// onTap: () {
// Get.toNamed(
// 'catd',
// arguments: catagory![i],
// );
// },
// child: Card(
// elevation: 0,
// child: Container(
// padding: EdgeInsets.all(5),
// height: h * .289,
// width: w * .5,
// decoration: BoxDecoration(
// borderRadius:
// BorderRadius.circular(5),
// color: Color(0xffFFFFFF),
// ),
// child: Column(
// crossAxisAlignment:
// CrossAxisAlignment.start,
// children: [
// Stack(
// children: [
// Container(
// height: h * .18,
// width: w * .45,
// decoration: BoxDecoration(
// borderRadius:
// BorderRadius
//     .circular(8),
// image: DecorationImage(
// image: NetworkImage(
// "${catagory[i].img}"),
// fit: BoxFit.cover,
// ),
// ),
// ),
// Positioned(
// top: h * .01,
// right: w * .02,
// child: CircleAvatar(
// radius: 15,
// backgroundColor:
// Colors.white,
// child: GestureDetector(
// onTap: () {
// if (!like.contains(
// catagory[i])) {
// like.add(
// catagory[i]);
//
// setState(() {
// liked = !liked;
// });
// }
// },
// child: (liked)
// ? Icon(
// Icons
//     .favorite,
// color: Color(
// 0xffFC2424),
// )
//     : Icon(
// Icons
//     .favorite_border,
// color: Color(
// 0xffFC2424),
// ),
// ),
// ),
// ),
// ],
// ),
// Container(
// height: h * .04,
// width: w,
// alignment:
// Alignment.centerLeft,
// child: Text(
// "${catagory[i].name}",
// style: Global.size12black,
// ),
// ),
// Text(
// "Starting",
// style: Global.size12jost,
// ),
// Text(
// "₹ 25000",
// style:
// Global.size15Montserrat,
// ),
// ],
// ),
// ),
// ),
// );
// }),
// ),
// ),
// ],
// ),
// );
