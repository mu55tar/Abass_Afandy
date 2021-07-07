import 'package:flutter/material.dart';
import 'package:flutter_application_new_project/pages/accuont/loginscreen.dart';
import 'package:flutter_application_new_project/pages/config.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(
        seconds: 10,
        navigateAfterSeconds: new LoginScreen(),
        title: new Text(
          'عباس افندي',
          style: new TextStyle(fontWeight: FontWeight.w900, fontSize: 30.0),
        ),
        image: Image.asset(
          "asstes/12.png",
        ),
        photoSize: 200.0,
        backgroundColor: Colors.white,
        loaderColor: Colors.red,
      ),
    );
  }
}
