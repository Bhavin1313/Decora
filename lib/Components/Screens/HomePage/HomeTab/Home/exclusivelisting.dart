import 'package:flutter/material.dart';

import '../../../../../Utils/global.dart';
import '../../../../../Utils/list.dart';

class MyWidgets {
  static Builder myrow() {
    return Builder(builder: (context) {
      double h = MediaQuery.of(context).size.height;
      double w = MediaQuery.of(context).size.width;

      return Row(
        children: [
          ...status
              .map(
                (e) => Card(
                  elevation: 0,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: h * .289,
                    width: w * .4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffFFFFFF),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: h * .18,
                              width: w * .4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: AssetImage("${e['image']}"),
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
                                    Icons.favorite_border,
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
                          "${e['time']}",
                          style: Global.size12jost,
                        ),
                        Text(
                          "${e['time']}",
                          style: Global.size15Montserrat,
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ],
      );
    });
  }
}

// child: FutureBuilder(
// future: Api_Helper.api.fetchCatagory(),
// builder: (context, snapshot) {
// if (snapshot.hasError) {
// return Text("${snapshot.error}");
// } else if (snapshot.hasData) {
// Catagory_Model? catagory = snapshot.data;
// return Row(
// children: [
// Card(
// elevation: 0,
// child: Container(
// padding: EdgeInsets.all(5),
// height: h * .289,
// width: w * .4,
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
// width: w * .4,
// decoration:
// BoxDecoration(
// borderRadius:
// BorderRadius
//     .circular(8),
// image:
// DecorationImage(
// image: AssetImage(
// "${catagory?.img}"),
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
// child:
// GestureDetector(
// onTap: () {},
// child: Icon(
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
// "${catagory?.name}",
// style: Global.size12black,
// ),
// ),
// Text(
// "Starting",
// style: Global.size12jost,
// ),
// Text(
// "${catagory?.themes['price']}",
// style:
// Global.size15Montserrat,
// ),
// ],
// ),
// ),
// ),
// ],
// );
// }
// return Center(
// child: CircularProgressIndicator(),
// );
// },
// ),
