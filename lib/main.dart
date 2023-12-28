import 'package:decora/Components/Screens/ForgetPassword/successfully.dart';
import 'package:decora/Components/Screens/HomePage/homepage.dart';
import 'package:decora/Components/Screens/Login/Views/login_screen.dart';
import 'package:decora/Components/Screens/One_Time_Intro/one_time_intro.dart';
import 'package:decora/Components/Screens/One_Time_Intro/screen1.dart';
import 'package:decora/Components/Screens/One_Time_Intro/screen2.dart';
import 'package:decora/Components/Screens/One_Time_Intro/screen3.dart';
import 'package:decora/Components/Screens/SignUpPage/Views/addressdetail.dart';
import 'package:decora/Components/Screens/SignUpPage/Views/gender.dart';
import 'package:decora/Components/Screens/SignUpPage/Views/number.dart';
import 'package:decora/Components/Screens/SignUpPage/Views/otppage.dart';
import 'package:decora/Components/Screens/Splash_Screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Components/Screens/ForgetPassword/forgetpassword.dart';
import 'Components/Screens/ForgetPassword/fotp.dart';
import 'Components/Screens/HomePage/Controller/indexCon.dart';
import 'Components/Screens/SignUpPage/Views/enter_gmail_page.dart';
import 'Components/Screens/SignUpPage/Views/setpass.dart';
import 'Components/Screens/SignUpPage/Views/userdetail.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();

  bool isVisitOnce = preferences.getBool("visited") ?? false;

  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<ChangeIndexProvider>(
          create: (context) => ChangeIndexProvider(),
        ),
      ],
      builder: (context, child) => GetMaterialApp(
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
          GetPage(
            name: '/fotp',
            page: () => FOtpPage(),
          ),
          GetPage(
            name: '/userdetails',
            page: () => UserDetails(),
          ),
          GetPage(
            name: '/address',
            page: () => Address(),
          ),
          GetPage(
            name: '/gender',
            page: () => Gender(),
          ),
          GetPage(
            name: '/number',
            page: () => Number(),
          ),
          GetPage(
            name: '/home',
            page: () => HomePage(),
          ),
        ],
      ),
    ),
  );
}
