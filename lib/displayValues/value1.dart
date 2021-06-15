import 'package:flutter/material.dart';

class Value1 extends StatelessWidget {
  const Value1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 200,
        width: 200,
        alignment: Alignment.center,
        child: Text("Value 1"),
      ),
    );
  }
}
