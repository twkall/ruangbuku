import 'package:flutter/material.dart';
import 'package:ruangbuku/customWidget/color.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RichText(
          text: TextSpan(
              style: TextStyle(
                fontFamily: 'League Spartan',
                fontSize: 48.0,
                letterSpacing: -3.5,
                color: ColorsTheme.blue,
              ),
              children: <TextSpan>[
                TextSpan(text: "ruang"),
                TextSpan(
                    text: "buku", style: TextStyle(color: ColorsTheme.orange))
              ]),
        ),
        RichText(
          text: TextSpan(
              style: TextStyle(
                fontFamily: 'League Spartan',
                fontSize: 12.0,
                color: ColorsTheme.orange,
              ),
              children: <TextSpan>[
                TextSpan(text: "Temukan buku "),
                TextSpan(
                    text: "yang kamu mau",
                    style: TextStyle(color: ColorsTheme.blue))
              ]),
        ),
        Padding(padding: EdgeInsets.only(top: 10.0))
      ],
    ));
  }
}
