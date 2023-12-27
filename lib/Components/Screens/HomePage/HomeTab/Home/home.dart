import 'package:decora/Components/Screens/HomePage/HomeTab/Home/exclusivelisting.dart';
import 'package:decora/Utils/list.dart';
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
                    Container(
                      height: h,
                      width: w,
                      child: GridView.builder(
                          shrinkWrap: true,
                          itemCount: status.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 270,
                            crossAxisSpacing: 0,
                          ),
                          itemBuilder: (ctx, i) {
                            return Card(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                              image: AssetImage(
                                                  "${status[i]['image']}"),
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
                                        "${status[i]['name']}",
                                        style: Global.size12black,
                                      ),
                                    ),
                                    Text(
                                      "${status[i]['time']}",
                                      style: Global.size12jost,
                                    ),
                                    Text(
                                      "${status[i]['time']}",
                                      style: Global.size15Montserrat,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
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
