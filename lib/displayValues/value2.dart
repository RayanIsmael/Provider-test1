import 'package:flutter/material.dart';

class Value2 extends StatelessWidget {
  const Value2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 200,
        width: 200,
        alignment: Alignment.center,
        child: Text("Value 2"),
      ),
    );
  }
}