import 'package:flutter/material.dart';
import 'package:ruangbuku/abstract/authPage.dart';
import 'package:ruangbuku/customWidget/color.dart';
import 'package:ruangbuku/customWidget/textInputEmail.dart';
import 'package:ruangbuku/customWidget/textInputPassword.dart';
import 'package:ruangbuku/customWidget/button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends AuthPage<LoginScreen> {
  @override
  Widget bodyBuilt(BuildContext context) {
    return (GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: ColorsTheme.blue,
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                      ),
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 30.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: "Selamat Datang"),
                            TextSpan(
                              text: "\nSilahkan Login untuk Melanjutkan",
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    child: Form(
                      // key: this._keyLogin,
                      child: ListView(
                        children: <Widget>[
                          TextInputEmail('email', 'Email'),
                          TextInputPassword('password', 'Kata sandi'),
                          Button('/login', ColorsTheme.blue, 'Masuk', Colors.white),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarBuilt(context),
      body: bodyBuilt(context),
    );
  }
}
