
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class HomeProvider extends ChangeNotifier {
  String lang = "";
  void setState(String newLang) {
    lang = newLang;
    notifyListeners();
  }

  List<bool> question = [false, false, false, false];
  void textColrs(int w) {
    if (question[w] == false) {
      question[w] = true;
      notifyListeners();
    } else {
      question[w] = false;
      notifyListeners();
    }
  }

  void setstate() {
    notifyListeners();
  }
}
