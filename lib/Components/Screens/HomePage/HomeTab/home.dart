import 'package:flutter/material.dart';

import '../../../../Utils/global.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Home",
          style: Global.size35,
        ),
      ),
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
    );
  }
}
