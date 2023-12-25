import 'package:decora/Components/Screens/HomePage/HomeTab/Home/exclusivelisting.dart';
import 'package:flutter/material.dart';
import '../../../../../Utils/global.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: h * .4,
                  width: w,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: w,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Exclusive Listings",
                            style: Global.size20,
                          ),
                          Spacer(),
                          Text(
                            "View More",
                            style: Global.size13,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: MyWidgets.myrow(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "Events Category",
                            style: Global.size20,
                          ),
                          Spacer(),
                          Text(
                            "View More",
                            style: Global.size13,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
