import 'package:flutter/material.dart';
import 'package:sanad_screens/consts/colors.dart';

class RoundButtonFlexible extends StatelessWidget {
  final String text;
  final Function onPressed;
  final double height;
  final double width;
  RoundButtonFlexible(
      {@required this.text,
      @required this.onPressed,
      @required this.height,
      @required this.width});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: height,
        width: width,
        margin: EdgeInsets.symmetric(horizontal: 70.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.lightBlueAccent),
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
