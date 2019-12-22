import 'package:flutter/material.dart';
import 'package:nayhtwe_calculator/tutorial/my_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(
        primaryColor: Colors.red
    ),
      home: MyHome(),
    );
  }
}