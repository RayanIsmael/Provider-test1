import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test1/myclass/myclass.dart';

class Value2 extends StatelessWidget {
  const Value2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mypro = Provider.of<MyClass>(context);
    return Card(
      child: Container(
        height: 200,
        width: 200,
        alignment: Alignment.center,
        child: Text(mypro.value2 == null ? "Value 2":"${mypro.value2}"),
      ),
    );
  }
}
