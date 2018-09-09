import 'dart:ui';
import 'package:validate/validate.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      new MaterialApp(
        title: "ruangbuku",
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
              ),
            ),
          ),
        ),
        home: HomeScreen(),
      ),
    );

class ColorLibs {
  static Color buttonGreen() {
    return Color(0xff01ef39);
  }

  static Color buttonBlue() {
    return Color(0xff01baef);
  }

  static Color buttonRed() {
    return Color(0xffff7972);
  }

  static Color buttonOrange() {
    return Color(0xfff9ac23);
  }

  static Color primary() {
    return Color(0xff01baef);
  }

  static Color secondary() {
    return Color(0xfff9ac23);
  }

  static Color error() {
    return Color(0xffb31919);
  }

  static Color primaryText() {
    return Color(0xff757575);
  }
}

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

  //validation function
  String _validateEmail(String value) {
    try {
      Validate.isEmail(value);
    } catch (e) {
      return "Format Email Salah";
    }

    return null;
  }

  String _validatePassword(String value) {
    if (value.length < 8) {
      return "Password kurang dari 8 karakter";
    }

    return null;
  }

  //login data to validation
  _LoginData _data = new _LoginData();

  //validation for submitting
  void submit() {
    if (this._keyLogin.currentState.validate()) {
      _keyLogin.currentState.save(); //save the form values

      print('Printing the login data.');
      print('Email: ${_data.email}');
      print('Password: ${_data.password}');
    }
  }

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
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Color(0xff01baef),
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
                        key: this._keyLogin,
                        child: ListView(
                          children: <Widget>[
                            Container(
                              padding:
                                  EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 4.0),
                              child: TextFormField(
                                style: TextStyle(
                                  color: Color(0xff01baef),
                                  fontFamily: 'Lato',
                                ),
                                key: Key("email"),
                                autofocus: true,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                    color: Color(0xff01baef),
                                    fontFamily: 'Lato',
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                  contentPadding: EdgeInsets.all(8.0),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 2.0,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 2.0,
                                    ),
                                  ),
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Icon(
                                      Icons.person,
                                      color: Color(0xff01baef),
                                      size: 16.0,
                                    ),
                                  ),
                                ),
                                validator: this._validateEmail,
                                onSaved: (String value) {
                                  this._data.email = value;
                                },
                              ),
                            ),
                            Container(
                              padding:
                                  EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
                              child: TextFormField(
                                obscureText: true,
                                style: TextStyle(
                                  color: Color(0xff01baef),
                                  fontFamily: 'Lato',
                                ),
                                key: Key("password"),
                                autofocus: true,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: "Kata Sandi",
                                  hintStyle: TextStyle(
                                    color: Color(0xff01baef),
                                    fontFamily: 'Lato',
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                  contentPadding: EdgeInsets.all(8.0),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 2.0,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 2.0,
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                    borderSide: BorderSide(
                                      color: ColorLibs.error(),
                                      width: 2.0,
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                    borderSide: BorderSide(
                                      style: BorderStyle.solid,
                                      color: Colors.red,
                                      width: 2.0,
                                    ),
                                  ),
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Icon(
                                      Icons.lock,
                                      color: Color(0xff01baef),
                                      size: 16.0,
                                    ),
                                  ),
                                ),
                                validator: this._validatePassword,
                                onSaved: (String value) {
                                  this._data.password = value;
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(16.0),
                              child: RaisedButton(
                                child: Text("Masuk"),
                                textColor: Colors.white,
                                color: Color(0xff01baef),
                                onPressed: () => this.submit(),
                              ),
                            ),
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
      ),
    );
  }
}
