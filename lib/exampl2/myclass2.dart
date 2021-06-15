import 'package:flutter/widgets.dart';

class MyClass2 extends ChangeNotifier {
  List mylist = [];

  addToList(product) {
    mylist.add(product);
    notifyListeners();
  }

}
