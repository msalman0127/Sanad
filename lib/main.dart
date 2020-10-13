import 'package:flutter/material.dart';
import 'package:sanad_screens/AddressInfo/addressInfo.dart';
import 'package:sanad_screens/AddressSettings/addressSettings.dart';
import 'package:sanad_screens/Disclaimer/disclaimer.dart';
import 'package:sanad_screens/DrawerMenu/drawerMenu.dart';
import 'package:sanad_screens/Loading.dart';
import 'package:sanad_screens/MyAccount/myAccount.dart';
import 'package:sanad_screens/Order/order.dart';
import 'package:sanad_screens/OrderSettings/orderSettings.dart';
import 'package:sanad_screens/Points/points.dart';
import 'package:sanad_screens/Ratings/ratings.dart';
import 'package:sanad_screens/TrackOrder/trackOrder.dart';
import 'package:sanad_screens/login.dart';
import 'package:sanad_screens/signup.dart';
import 'package:sanad_screens/screens/paymentInfo.dart';
import 'package:sanad_screens/screens/serviceInfoScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddressInfo(),
      //initialRoute: ServiceInfoScreen.id,
      routes: {
        PaymentInfoScreen.id: (context) => PaymentInfoScreen(),
        ServiceInfoScreen.id: (context) => ServiceInfoScreen(),
      },
    );
  }
}
