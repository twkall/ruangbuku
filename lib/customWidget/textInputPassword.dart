import 'package:flutter/material.dart';

class TextInputPassword extends StatelessWidget {
  TextInputPassword(this.keyVal, this.hint);

  final String keyVal;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return (Container(
      padding: EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
      child: TextFormField(
        obscureText: true,
        style: TextStyle(
          color: Color(0xff01baef),
          fontFamily: 'Lato',
        ),
        key: Key(keyVal),
        autofocus: true,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: Color(0xff01baef),
            fontFamily: 'Lato',
          ),
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.all(8.0),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2.0,
            ),
          ),
        ),
      ),
    ));
  }
}
