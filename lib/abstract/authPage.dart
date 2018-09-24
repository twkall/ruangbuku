import 'package:flutter/material.dart';

abstract class AuthPage<T extends StatefulWidget> extends State<T> {

  Widget appBarBuilt(BuildContext context) {
    return(AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ));
  }

  @protected
  Widget bodyBuilt(BuildContext context);

}
