import 'package:flutter/material.dart';
import 'package:sanad_screens/Loading.dart';
import 'package:sanad_screens/login.dart';
import 'package:sanad_screens/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}
