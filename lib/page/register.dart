import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreen createState() => _RegisterScreen();
}

class _RegisterScreen extends State<RegisterScreen> {
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
                            ),
                            Container(
                              padding: EdgeInsets.all(16.0),
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
