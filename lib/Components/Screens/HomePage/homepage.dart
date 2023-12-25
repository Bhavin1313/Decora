import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:decora/Components/Screens/HomePage/HomeTab/history.dart';
import 'package:decora/Components/Screens/HomePage/HomeTab/home.dart';
import 'package:decora/Components/Screens/HomePage/HomeTab/like.dart';
import 'package:decora/Components/Screens/HomePage/HomeTab/profile.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'Controller/indexCon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pageList = [
    Home(),
    Like(),
    History(),
    Profile(),
  ];
  final iconList = <IconData>[
    Icons.home_outlined,
    Icons.favorite_border,
    Icons.history,
    Icons.person_outline,
  ];
  PageController pageController = PageController();
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9), //destination sc reen
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, shape: CircleBorder(),
        backgroundColor: Color(0xffffffff),
        child: CircleAvatar(
          radius: 24,
          backgroundColor: Color(0xffE4A11B),
          child: IconButton(
            onPressed: () {},
            color: Colors.white,
            icon: Icon(
              Icons.search,
              size: 28,
            ),
          ),
        ),
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: Provider.of<ChangeIndexProvider>(context, listen: true)
            .changePageIndex
            .index,

        height: 70,
        iconSize: 32,
        inactiveColor: Color(0xff6E6E6E),
        activeColor: Color(0xffE4A11B),
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.sharpEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (val) {
          Provider.of<ChangeIndexProvider>(context, listen: false)
              .ChangeIndex(val: val);
          pageController.animateToPage(val,
              duration: Duration(microseconds: 150), curve: Curves.linear);
        },

        //other params
      ),
      body: PageView(
        onPageChanged: (val) {
          Provider.of<ChangeIndexProvider>(context, listen: false)
              .ChangeIndex(val: val);
        },
        controller: pageController,
        children: pageList,
      ),
    );
  }
}
