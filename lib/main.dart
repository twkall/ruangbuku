import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(
      new MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Color(0xff01baef),
          accentColor: Color(0xff0b4f6c),
          buttonColor: Color(0xff01baef),
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
          backgroundColor: Color(0xffe5e5e5),
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
              color: Color(0xff757575),
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
                color: Color(0xff01baef),
              ))),
        ),
        home: HomeScreen(),
      ),
    );

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
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
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
              child: Container(
                  decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.85),
              )),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                          style: TextStyle(
                            fontFamily: 'League Spartan',
                            fontSize: 48.0,
                            letterSpacing: -3.5,
                            color: Color(0xff01baef),
                          ),
                          children: <TextSpan>[
                            TextSpan(text: "ruang"),
                            TextSpan(
                                text: "buku",
                                style: TextStyle(color: Color(0xfff9ac23)))
                          ]),
                    ),
                    RichText(
                      text: TextSpan(
                          style: TextStyle(
                            fontFamily: 'League Spartan',
                            fontSize: 12.0,
                            color: Color(0xfff9ac23),
                          ),
                          children: <TextSpan>[
                            TextSpan(text: "Temukan buku "),
                            TextSpan(
                                text: "yang kamu mau",
                                style: TextStyle(color: Color(0xff01baef)))
                          ]),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0))
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(32.0, 0.0, 32.0, 0.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                          child: Text("Masuk"),
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(32.0, 0.0, 32.0, 16.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                          child: Text("Daftar"),
                          textColor: Colors.white,
                          color: Color(0xfff9ac23),
                          onPressed: () => print("Pressed Orange"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginData {
  String email = '';
  String password = '';
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _keyLogin = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Form(
                key: this._keyLogin,
                child: ListView(
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        labelText: "Email",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                      ),
                    ),
                    Container(
                      child: RaisedButton(
                        child: Text("Masuk"),
                        textColor: Colors.white,
                        color: Color(0xff01baef),
                        onPressed: () => print("Pressed Blue"),
                      ),
                    ),
                  ],
                ),
              ),
        ],
      ),
    );
  }
}
