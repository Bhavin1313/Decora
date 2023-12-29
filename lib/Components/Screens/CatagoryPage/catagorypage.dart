import 'package:decora/Components/Model/CategoryModel/catagorymodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utils/global.dart';

class CatDatail extends StatefulWidget {
  const CatDatail({super.key});

  @override
  State<CatDatail> createState() => _CatDatailState();
}

class _CatDatailState extends State<CatDatail> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    Catagory_Model? data =
        ModalRoute.of(context)!.settings.arguments as Catagory_Model?;
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
          "${data?.name}",
          style: Global.size23,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            Container(
              height: h * .3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                image: DecorationImage(
                  image: NetworkImage("${data?.img}"),
                ),
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: h * .05,
            ),
            ...?data?.themes
                .map(
                  (e) => GestureDetector(
                    onTap: () {
                      Get.toNamed('theme', arguments: e);
                    },
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          height: h * .12,
                          width: w * .25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage("${e['img']}"),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${e['name']}",
                              style: Global.size16black,
                            ),
                            Text(
                              "₹ ${e['price']}",
                              style: Global.size14black,
                            ),
                          ],
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
                  ),
                )
                .toList(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
