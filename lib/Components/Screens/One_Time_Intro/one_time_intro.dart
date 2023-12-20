import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OneTimeIntro extends StatefulWidget {
  const OneTimeIntro({super.key});

  @override
  State<OneTimeIntro> createState() => _OneTimeIntroState();
}

class _OneTimeIntroState extends State<OneTimeIntro> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    double fontsizesmall = 18;
    double fontsizebig = 30;
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            titleWidget: const Text(
              "",
            ),
            bodyWidget: Column(
              children: [
                Container(
                  height: h * .55,
                  width: w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/Assets/2.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(
                  height: h * .03,
                ),
                Text(
                  "Discover a Better Way to",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: fontsizebig,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Rent your Perfect Home.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: fontsizebig,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: h * .03,
                ),
                Text(
                  "Discover Countless Homes and Properties, ",
                  style: TextStyle(
                    color: Color(0xff787878),
                    fontSize: fontsizesmall,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Tailored to Your Every Need.",
                  style: TextStyle(
                    color: Color(0xff787878),
                    fontSize: fontsizesmall,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          PageViewModel(
            titleWidget: const Text(
              "",
            ),
            bodyWidget: Column(
              children: [
                Container(
                  height: h * .55,
                  width: w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/Assets/2.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(
                  height: h * .03,
                ),
                Text(
                  "Seamless Rentals, Endless",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: fontsizebig,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Memories For You",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: fontsizebig,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: h * .03,
                ),
                Text(
                  "Endless Option One Simple Search. Find your ",
                  style: TextStyle(
                    color: Color(0xff787878),
                    fontSize: fontsizesmall,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Perfect Home Away from Home.",
                  style: TextStyle(
                    color: Color(0xff787878),
                    fontSize: fontsizesmall,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          PageViewModel(
            titleWidget: const Text(
              "",
            ),
            bodyWidget: Column(
              children: [
                Container(
                  height: h * .55,
                  width: w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/Assets/2.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(
                  height: h * .03,
                ),
                Text(
                  "Discover Rent Experience",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: fontsizebig,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "your Home Away from Home",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: fontsizebig,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: h * .03,
                ),
                Text(
                  "From Cosy Cottages to Luxurious Villas Under",
                  style: TextStyle(
                    color: Color(0xff787878),
                    fontSize: fontsizesmall,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Your Ideal Getaway in on Instant",
                  style: TextStyle(
                    color: Color(0xff787878),
                    fontSize: fontsizesmall,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
        showNextButton: true,
        next: const Text(
          "Next",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        done: const Text(
          "Done",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        onDone: () async {
          Get.offNamedUntil('/splash', (routes) => false);
          SharedPreferences preferences = await SharedPreferences.getInstance();
          preferences.setBool("visited", true);
        },
      ),
    );
  }
}
