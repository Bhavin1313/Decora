import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:decora/Components/Screens/HomePage/HomeTab/Home/exclusivelisting.dart';
import 'package:flutter/material.dart';

import '../../../../../Utils/global.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Connectivity connectivity = Connectivity();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 18,
                  bottom: 10,
                ),
                height: h * .63,
                width: w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                  color: Color(0xffEFC776),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      padding: EdgeInsets.only(
                        left: 18,
                        right: 18,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.arrow_back_outlined,
                              color: Color(0xff6E6E6E),
                              size: 20,
                            ),
                          ),
                          Text(
                            "Profile",
                            style: Global.size22,
                          ),
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.notifications_outlined,
                              color: Color(0xff6E6E6E),
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * .03,
                    ),
                    CircleAvatar(
                      radius: 50,
                    ),
                    SizedBox(
                      height: h * .015,
                    ),
                    Text(
                      "Krutik Shah",
                      style: Global.size22white,
                    ),
                    Text(
                      "kshah1708@gmail.com",
                      style: Global.size15white,
                    ),
                    SizedBox(
                      height: h * .007,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 18,
                        ),
                        Text(
                          "My Listings",
                          style: Global.size22white,
                        ),
                        Spacer(),
                        Text(
                          "",
                          style: Global.size22white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * .008,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 11,
                          ),
                          MyWidgets.myrow(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(18),
                height: h * .55,
                width: w,
                decoration: BoxDecoration(
                  color: Color(0xffF9F9F9),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: h * .07,
                      width: w,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Icon(
                            Icons.request_page,
                            color: Color(0xff6B6B6B),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "My Request",
                            style: Global.size17black,
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: Color(0xff6B6B6B),
                            size: 17,
                            weight: 6,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: h * .07,
                      width: w,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Icon(
                            Icons.event_note,
                            color: Color(0xff6B6B6B),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "My Event Details",
                            style: Global.size17black,
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: Color(0xff6B6B6B),
                            size: 17,
                            weight: 6,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: h * .07,
                      width: w,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: Color(0xff6B6B6B),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Setting",
                            style: Global.size17black,
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: Color(0xff6B6B6B),
                            size: 17,
                            weight: 6,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: h * .07,
                      width: w,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Icon(
                            Icons.message,
                            color: Color(0xff6B6B6B),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "My Messages",
                            style: Global.size17black,
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: Color(0xff6B6B6B),
                            size: 17,
                            weight: 6,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: h * .07,
                      width: w,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Icon(
                            Icons.currency_rupee,
                            color: Color(0xff6B6B6B),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Payment Details",
                            style: Global.size17black,
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: Color(0xff6B6B6B),
                            size: 17,
                            weight: 6,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: h * .07,
                      width: w,
                      decoration: BoxDecoration(
                        color: Color(0xffEFC776),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Log Out",
                        style: Global.size20white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:curved_progress_bar/curved_progress_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:weather_app_pr/Components/Helpers/apihelper.dart';
// import 'package:weather_app_pr/Model/api_model.dart';
//
// import '../../Provider/platformprovider.dart';
// import '../../Provider/theamprovider.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   TextEditingController search = TextEditingController();
//   String searchData = "";
//   Connectivity connectivity = Connectivity();
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     Api_Helper.api.fetchWeather(search: searchData);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//
//     return Scaffold(
//       body: StreamBuilder(
//         stream: connectivity.onConnectivityChanged,
//         builder: (
//             BuildContext context,
//             AsyncSnapshot<ConnectivityResult> snapshot,
//             ) {
//           return (snapshot.data == ConnectivityResult.mobile ||
//               snapshot.data == ConnectivityResult.wifi)
//               ? Center(
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Container(
//                     padding: EdgeInsets.only(
//                       top: 18,
//                       bottom: 10,
//                     ),
//                     height: h * .63,
//                     width: w,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                         bottomRight: Radius.circular(8),
//                         bottomLeft: Radius.circular(8),
//                       ),
//                       color: Color(0xffEFC776),
//                     ),
//                     child: Column(
//                       children: [
//                         Container(
//                           height: 40,
//                           padding: EdgeInsets.only(
//                             left: 18,
//                             right: 18,
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Container(
//                                 height: 35,
//                                 width: 35,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(4),
//                                   color: Colors.white,
//                                 ),
//                                 child: Icon(
//                                   Icons.arrow_back_outlined,
//                                   color: Color(0xff6E6E6E),
//                                   size: 20,
//                                 ),
//                               ),
//                               Text(
//                                 "Profile",
//                                 style: Global.size22,
//                               ),
//                               Container(
//                                 height: 35,
//                                 width: 35,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(4),
//                                   color: Colors.white,
//                                 ),
//                                 child: Icon(
//                                   Icons.notifications_outlined,
//                                   color: Color(0xff6E6E6E),
//                                   size: 20,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: h * .03,
//                         ),
//                         CircleAvatar(
//                           radius: 50,
//                         ),
//                         SizedBox(
//                           height: h * .015,
//                         ),
//                         Text(
//                           "Krutik Shah",
//                           style: Global.size22white,
//                         ),
//                         Text(
//                           "kshah1708@gmail.com",
//                           style: Global.size15white,
//                         ),
//                         SizedBox(
//                           height: h * .007,
//                         ),
//                         Row(
//                           children: [
//                             SizedBox(
//                               width: 18,
//                             ),
//                             Text(
//                               "My Listings",
//                               style: Global.size22white,
//                             ),
//                             Spacer(),
//                             Text(
//                               "",
//                               style: Global.size22white,
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: h * .008,
//                         ),
//                         SingleChildScrollView(
//                           scrollDirection: Axis.horizontal,
//                           child: Row(
//                             children: [
//                               SizedBox(
//                                 width: 11,
//                               ),
//                               MyWidgets.myrow(),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.all(18),
//                     height: h * .55,
//                     width: w,
//                     decoration: BoxDecoration(
//                       color: Color(0xffF9F9F9),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           padding: EdgeInsets.all(10),
//                           height: h * .07,
//                           width: w,
//                           decoration: BoxDecoration(
//                             color: Color(0xffFFFFFF),
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           alignment: Alignment.center,
//                           child: Row(
//                             children: [
//                               Icon(
//                                 Icons.request_page,
//                                 color: Color(0xff6B6B6B),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Text(
//                                 "My Request",
//                                 style: Global.size17black,
//                               ),
//                               Spacer(),
//                               Icon(
//                                 Icons.arrow_forward_ios_sharp,
//                                 color: Color(0xff6B6B6B),
//                                 size: 17,
//                                 weight: 6,
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           padding: EdgeInsets.all(10),
//                           height: h * .07,
//                           width: w,
//                           decoration: BoxDecoration(
//                             color: Color(0xffFFFFFF),
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           alignment: Alignment.center,
//                           child: Row(
//                             children: [
//                               Icon(
//                                 Icons.event_note,
//                                 color: Color(0xff6B6B6B),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Text(
//                                 "My Event Details",
//                                 style: Global.size17black,
//                               ),
//                               Spacer(),
//                               Icon(
//                                 Icons.arrow_forward_ios_sharp,
//                                 color: Color(0xff6B6B6B),
//                                 size: 17,
//                                 weight: 6,
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           padding: EdgeInsets.all(10),
//                           height: h * .07,
//                           width: w,
//                           decoration: BoxDecoration(
//                             color: Color(0xffFFFFFF),
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           alignment: Alignment.center,
//                           child: Row(
//                             children: [
//                               Icon(
//                                 Icons.settings,
//                                 color: Color(0xff6B6B6B),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Text(
//                                 "Setting",
//                                 style: Global.size17black,
//                               ),
//                               Spacer(),
//                               Icon(
//                                 Icons.arrow_forward_ios_sharp,
//                                 color: Color(0xff6B6B6B),
//                                 size: 17,
//                                 weight: 6,
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           padding: EdgeInsets.all(10),
//                           height: h * .07,
//                           width: w,
//                           decoration: BoxDecoration(
//                             color: Color(0xffFFFFFF),
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           alignment: Alignment.center,
//                           child: Row(
//                             children: [
//                               Icon(
//                                 Icons.message,
//                                 color: Color(0xff6B6B6B),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Text(
//                                 "My Messages",
//                                 style: Global.size17black,
//                               ),
//                               Spacer(),
//                               Icon(
//                                 Icons.arrow_forward_ios_sharp,
//                                 color: Color(0xff6B6B6B),
//                                 size: 17,
//                                 weight: 6,
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           padding: EdgeInsets.all(10),
//                           height: h * .07,
//                           width: w,
//                           decoration: BoxDecoration(
//                             color: Color(0xffFFFFFF),
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           alignment: Alignment.center,
//                           child: Row(
//                             children: [
//                               Icon(
//                                 Icons.currency_rupee,
//                                 color: Color(0xff6B6B6B),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Text(
//                                 "Payment Details",
//                                 style: Global.size17black,
//                               ),
//                               Spacer(),
//                               Icon(
//                                 Icons.arrow_forward_ios_sharp,
//                                 color: Color(0xff6B6B6B),
//                                 size: 17,
//                                 weight: 6,
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           height: h * .07,
//                           width: w,
//                           decoration: BoxDecoration(
//                             color: Color(0xffEFC776),
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           alignment: Alignment.center,
//                           child: Text(
//                             "Log Out",
//                             style: Global.size20white,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           )
//               : Center(
//             child: Container(
//               height: 450,
//               width: 500,
//               decoration: const BoxDecoration(
//                   shape: BoxShape.circle,
//                   image: DecorationImage(
//                       image: AssetImage("lib/Components/Assets/1.gif"),
//                       fit: BoxFit.cover)),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
