import 'package:flutter/material.dart';
import 'package:nayhtwe_calculator/tutorial/my_home.dart';
import 'package:nayhtwe_calculator/tutorial/calculator.dart';
import 'package:splashscreen/splashscreen.dart';

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
      home: Welcome(),
    );
  }
}
class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 6,
        navigateAfterSeconds: HomePage(),
        title: Text('Welcome To Fullstack Batch2',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.white
          ),),
        image: Image.network('https://myanmarlinks.net/front/img/mmlinks_logo_white.png'),
        backgroundColor: Colors.black,
        styleTextUnderTheLoader: TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.blue
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
        child: Text("Calculator"),
        shape: StadiumBorder(),
        color: Colors.blue,
        colorBrightness: Brightness.dark,
        onPressed: () {
          Route route = MaterialPageRoute(builder: (context) => Calculator());
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
