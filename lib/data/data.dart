import 'package:flutter/cupertino.dart';

class Data extends ChangeNotifier {
  bool isOpened = false;

  void changeIsOpened(bool isClicked) {
    isOpened = isClicked;
    notifyListeners();
  }
}
