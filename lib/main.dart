import 'package:flutter/material.dart';
import 'login_page/login_state.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Survey House",
      theme: ThemeData(
        primaryColor: Colors.black,
        splashColor: Colors.deepOrange,
        fontFamily: 'Montserrat',
      ),
      home: LoginState(),
    );
  }
}