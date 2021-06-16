import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test1/exampl2/home2.dart';
import 'package:provider_test1/exampl2/myclass2.dart';
import 'package:provider_test1/myclass/myclass.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ///
      ChangeNotifierProvider(create: (_) => MyClass()),
      ChangeNotifierProvider(create: (_) => MyClass2()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home2(),
    );
  }
}
