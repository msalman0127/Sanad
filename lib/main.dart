import 'package:flutter/material.dart';
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
      initialRoute: ServiceInfoScreen.id,
      routes: {
        PaymentInfoScreen.id: (context) => PaymentInfoScreen(),
        ServiceInfoScreen.id: (context) => ServiceInfoScreen(),
      },
    );
  }
}
