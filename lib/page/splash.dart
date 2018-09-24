import 'package:flutter/material.dart';
import 'package:ruangbuku/customWidget/button.dart';
import 'package:ruangbuku/customWidget/color.dart';
import 'package:ruangbuku/customWidget/logo.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg_welcome.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 6,
                child: Logo(),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Button('/login', ColorsTheme.blue, 'Masuk', Colors.white),
                    Button('/register', ColorsTheme.orange, 'Daftar', Colors.white),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
