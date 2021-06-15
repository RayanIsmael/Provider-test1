import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test1/home.dart';
import 'package:provider_test1/myclass/myclass.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ///
      ChangeNotifierProvider(create: (_) => MyClass())
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
      home: Home(),
    );
  }
}
