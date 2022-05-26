import 'package:developers_community/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff5f5fff),
        accentColor: Color(0xff030047),
        highlightColor: Color(0xffb7b7d2),
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xff030047)
          ),
          headline2: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(0, 132, 255, 1),
          ),
          headline3: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white
          ),
          headline4: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Color(0xff030047)
          ),
          bodyText1: TextStyle(
              fontSize: 20,
              color: Color(0xffb7b7d2)
          ),
          bodyText2: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff5f5fff)
          ),
          subtitle1: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xffb7b7d2)
          ),
        ),
      ),
      home: SplashScreen(),
    );
  }

}