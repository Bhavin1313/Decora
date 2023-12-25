import 'package:flutter/material.dart';

import '../../../../Utils/global.dart';

class Like extends StatefulWidget {
  const Like({super.key});

  @override
  State<Like> createState() => _LikeState();
}

class _LikeState extends State<Like> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Like",
          style: Global.size35,
        ),
      ),
    );
  }
}
