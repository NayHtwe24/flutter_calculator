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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  Widget newActions(context) => Wrap(
    alignment: WrapAlignment.center,
    spacing: 20.0,
    runSpacing: 20.0,
    children: <Widget>[
      RaisedButton(
        child: Text("UI Tutorials"),
        shape: StadiumBorder(),
        color: Colors.blue,
        colorBrightness: Brightness.dark,
        onPressed: () {
          Route route = MaterialPageRoute(builder: (context) => MyHome());
          Navigator.push(context, route);
        },
      ),
      RaisedButton(
        child: Text("Calculators"),
        shape: StadiumBorder(),
        color: Colors.blue,
        colorBrightness: Brightness.dark,
        onPressed: () {
          Route route = MaterialPageRoute(builder: (context) => MyHome());
          Navigator.push(context, route);
        },
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fullstack Batch-2'),
      ),
      body: newActions(context),
    );
  }
}
