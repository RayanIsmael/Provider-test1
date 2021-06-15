import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test1/myclass/myclass.dart';

class Value1 extends StatelessWidget {
  const Value1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mypro = Provider.of<MyClass>(context);
    return Card(
      child: Container(
        height: 200,
        width: 200,
        alignment: Alignment.center,
        child: Text(mypro.value1 == null ? "Value 1":"${mypro.value1}"),
      ),
    );
  }
}
