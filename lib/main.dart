import 'package:flutter/material.dart';
import 'package:sanad_screens/AddressInfo/addressInfo.dart';
import 'package:sanad_screens/Disclaimer/disclaimer.dart';
import 'package:sanad_screens/DrawerMenu/drawerMenu.dart';
import 'package:sanad_screens/Loading.dart';
import 'package:sanad_screens/TrackOrder/trackOrder.dart';
import 'package:sanad_screens/login.dart';
import 'package:sanad_screens/signup.dart';
import 'package:sanad_screens/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TrackOrder(),
    );
  }
}
