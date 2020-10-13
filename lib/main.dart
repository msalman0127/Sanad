import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:sanad_screens/AddressInfo/addressInfo.dart';
import 'package:sanad_screens/Disclaimer/disclaimer.dart';
import 'package:sanad_screens/DrawerMenu/drawerMenu.dart';
import 'package:sanad_screens/Loading.dart';
import 'package:sanad_screens/TrackOrder/trackOrder.dart';
import 'package:sanad_screens/login.dart';
import 'package:sanad_screens/signup.dart';
import 'package:sanad_screens/test.dart';
=======
import 'package:sanad_screens/screens/paymentInfo.dart';
import 'package:sanad_screens/screens/serviceInfoScreen.dart';
>>>>>>> f8548577e1d72312c000196156717b5322ff7795

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      home: TrackOrder(),
=======
      initialRoute: ServiceInfoScreen.id,
      routes: {
        PaymentInfoScreen.id: (context) => PaymentInfoScreen(),
        ServiceInfoScreen.id: (context) => ServiceInfoScreen(),
      },
>>>>>>> f8548577e1d72312c000196156717b5322ff7795
    );
  }
}
