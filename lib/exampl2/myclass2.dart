import 'package:flutter/widgets.dart';

class MyClass2 extends ChangeNotifier {
  List mylist = [];
/////////////////
  addToList(product) {
    mylist.add(product);
    notifyListeners();
  }

////////////
  removeproduct(id) {
    if (mylist.isEmpty) {
      print("IsEmpty");
    } else {
      mylist.removeWhere((element) => element['id'] == id);
      notifyListeners();
    }
  }

//////////////////
  checkProduct(id) {
    if (mylist.isEmpty) {
      return false;
    } else {
      var aa = mylist.where((element) => element['id'] == id);
      if (aa.isEmpty)
        return false;
      else
        return true;
    }
  }
}
