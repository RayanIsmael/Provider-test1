import 'package:flutter/widgets.dart';

class MyClass extends ChangeNotifier {
  var value1, value2;

  chV({v1, v2}) {
    value1 = v1;
    value2 = v2;
    notifyListeners();
  }
}
