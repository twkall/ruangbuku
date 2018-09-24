import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button(this.navigator, this.color, this.text, this.textCOlor);

  final String navigator;
  final Color color;
  final String text;
  final Color textCOlor;

  @override
  Widget build(BuildContext context) {
    return (Padding(
      padding: EdgeInsets.fromLTRB(32.0, 0.0, 32.0, 0.0),
      child: SizedBox(
        width: double.infinity,
        child: RaisedButton(
          child: Text(text),
          textColor: textCOlor,
          color: color,
          onPressed: () {
            Navigator.pushNamed(context, navigator);
          },
        ),
      ),
    ));
  }
}
