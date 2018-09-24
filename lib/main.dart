import 'package:flutter/material.dart';
import 'package:ruangbuku/customWidget/color.dart';
import 'package:ruangbuku/page/splash.dart';
import 'package:ruangbuku/page/login.dart';
import 'package:ruangbuku/page/register.dart';

void main() {
  runApp(MaterialApp(
    title: "ruangbuku",
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: ColorsTheme.blue,
      accentColor: ColorsTheme.orange,
      buttonTheme: ButtonThemeData(
        textTheme: ButtonTextTheme.normal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(36.0),
          side: BorderSide(
            style: BorderStyle.solid,
            color: Colors.white,
            width: 2.0,
          ),
        ),
      ),
      backgroundColor: ColorsTheme.grey,
      cardColor: Colors.white,
      textTheme: TextTheme(
        title: TextStyle(
          color: Colors.white,
          fontFamily: 'League Spartan',
        ),
        button: TextStyle(
          color: Colors.white,
          fontFamily: 'Lato',
          letterSpacing: 0.0,
        ),
        body1: TextStyle(
          color: ColorsTheme.darkGrey,
          fontFamily: 'Lato',
        ),
        caption: TextStyle(
          color: Colors.grey,
          fontFamily: 'Lato',
          fontStyle: FontStyle.italic,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: ColorsTheme.blue,
          ))),
    ),
    routes: <String, WidgetBuilder> {
      '/login': (BuildContext context) => LoginScreen(),
      '/register': (BuildContext context) => RegisterScreen(),
    },
    home: SplashScreen(),
  ));
}
