import 'package:flutter/material.dart';
import '../Model/index.dart';

class ChangeIndexProvider extends ChangeNotifier {
  ChangePageIndex changePageIndex = ChangePageIndex(index: 0);

  void ChangeIndex({required int val}) {
    changePageIndex.index = val;
    notifyListeners();
  }
}
