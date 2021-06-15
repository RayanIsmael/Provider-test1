import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test1/myclass/myclass.dart';

class Value2 extends StatelessWidget {
  const Value2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mypro = Provider.of<MyClass>(context);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      elevation: 20,
      shadowColor: Colors.green,
      color: Colors.green[900],
      child: Container(
        height: 200,
        width: 200,
        alignment: Alignment.center,
        child: Text(
          mypro.value2 == null ? "Value 2" : "${mypro.value2}",
          style: TextStyle(fontSize: 20, color: Colors.white,letterSpacing: 3),
          
        ),
      ),
    );
  }
}
