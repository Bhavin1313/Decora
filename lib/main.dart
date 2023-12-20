import 'package:decora/Components/Screens/Login/Views/login_screen.dart';
import 'package:decora/Components/Screens/One_Time_Intro/one_time_intro.dart';
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
          name: '/splash',
          page: () => SplashScreen(),
        ),
        GetPage(
          name: '/',
          page: () => OneTimeIntro(),
        ),
        GetPage(
          name: '/login',
          page: () => Login(),
        ),
      ],
    ),
  );
}
