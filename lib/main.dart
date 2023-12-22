import 'package:decora/Components/Screens/ForgetPassword/successfully.dart';
import 'package:decora/Components/Screens/Login/Views/login_screen.dart';
import 'package:decora/Components/Screens/One_Time_Intro/one_time_intro.dart';
import 'package:decora/Components/Screens/One_Time_Intro/screen1.dart';
import 'package:decora/Components/Screens/One_Time_Intro/screen2.dart';
import 'package:decora/Components/Screens/One_Time_Intro/screen3.dart';
import 'package:decora/Components/Screens/SignUpPage/Views/otppage.dart';
import 'package:decora/Components/Screens/Splash_Screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Components/Screens/ForgetPassword/forgetpassword.dart';
import 'Components/Screens/SignUpPage/Views/enter_gmail_page.dart';
import 'Components/Screens/SignUpPage/Views/setpass.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();

  bool isVisitOnce = preferences.getBool("visited") ?? false;

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: (isVisitOnce == true) ? '/splash' : '/',
      getPages: [
        GetPage(
          name: '/splash',
          page: () => SplashScreen(),
        ),
        GetPage(
          name: '/one',
          page: () => OneTimeIntro(),
        ),
        GetPage(
          name: '/login',
          page: () => Login(),
        ),
        GetPage(
          name: '/entergmail',
          page: () => EnterGmail(),
        ),
        GetPage(
          name: '/otp',
          page: () => OtpPage(),
        ),
        GetPage(
          name: '/setpass',
          page: () => SetPassworld(),
        ),
        GetPage(
          name: '/forpass',
          page: () => ForgetPass(),
        ),
        GetPage(
          name: '/successful',
          page: () => Successfully(),
        ),
        GetPage(
          name: '/',
          page: () => Screen1(),
        ),
        GetPage(
          name: '/screen2',
          page: () => Screen2(),
        ),
        GetPage(
          name: '/screen3',
          page: () => Screen3(),
        ),
      ],
    ),
  );
}
