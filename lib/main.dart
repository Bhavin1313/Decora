import 'package:decora/Components/Screens/Splash_Screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      getPages: [
        GetPage(
          name: '/',
          page: () => SplashScreen(),
        ),
        // GetPage(
        //   name: '/signup',
        //   page: () => SignUp_Page(),
        // ),
        // GetPage(
        //   name: '/chat',
        //   page: () => Chat_Screen(),
        // ),
        // GetPage(
        //   name: '/tab',
        //   page: () => TabPage(),
        // ),
        // GetPage(
        //   name: '/d',
        //   page: () => R_Detail(),
        // ),
        // GetPage(
        //   name: '/',
        //   page: () => Agree(),
        // ),
      ],
    ),
  );
}
