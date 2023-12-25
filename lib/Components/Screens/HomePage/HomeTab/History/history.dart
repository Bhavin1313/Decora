import 'package:flutter/material.dart';

import '../../../../../Utils/global.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "History",
          style: Global.size35,
        ),
      ),
    );
  }
}
