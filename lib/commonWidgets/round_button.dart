import 'package:flutter/material.dart';
import 'package:sanad_screens/consts/colors.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  RoundButton({this.text, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: 60.0,
        width: 150.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0), color: blue),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: TextStyle(color: white, fontSize: 20.0)),
          ],
        ),
      ),
    );
  }
}
