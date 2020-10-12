import 'package:flutter/material.dart';
import 'package:sanad_screens/consts/colors.dart';

class Heading extends StatelessWidget {
  final String title;
  const Heading({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Column(
        children: [Text(title, style: TextStyle(color: blue, fontSize: 30.0))],
      ),
    );
  }
}
