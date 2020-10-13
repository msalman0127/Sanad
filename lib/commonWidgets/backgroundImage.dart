import 'package:flutter/material.dart';
import 'package:sanad_screens/helperFunctions/commonFunctions.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight(context),
      width: deviceWidth(context),
      child: Image.asset('images/2.png'),
    );
  }
}
