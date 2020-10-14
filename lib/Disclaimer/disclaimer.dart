import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanad_screens/helperFunctions/commonFunctions.dart';
import 'package:sanad_screens/screens/serviceInfoScreen.dart';

class Disclaimer extends StatefulWidget {
  @override
  _DisclaimerState createState() => _DisclaimerState();
}

class _DisclaimerState extends State<Disclaimer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 32.0,
            child: Container(
              height: deviceHeight(context),
              width: deviceWidth(context) * 0.85,
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 75.0, top: 50.0),
                    child: Row(
                      children: [
                        Text(
                          'DISCLAIMER',
                          style: TextStyle(
                            fontSize: 25.0,
                            letterSpacing: 1.5,
                            color: Colors.lightBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 40.0),
                    child: Divider(
                      thickness: 1.0,
                      color: Colors.lightBlue,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Container(
                      height: deviceHeight(context) * 0.1,
                      padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                      child: Text(
                        'Please Note that your subscription period and number of session should allow for the adequacy of the size of your house.',
                        style: TextStyle(
                          letterSpacing: 1.5,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Container(
                      height: deviceHeight(context) * 0.07,
                      padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                      child: Text(
                        'Our session guarantees the completion of the following in one session: ',
                        style: TextStyle(
                          letterSpacing: 1.5,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
                      child: Text(
                        '*',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
                      child: Text(
                        '*',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
                      child: Text(
                        '*',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
                      child: Text(
                        '*',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
                      child: Text(
                        '*',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 100.0, right: 100.0, top: 160.0),
                    child: Container(
                      height: deviceHeight(context) * 0.07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.lightBlueAccent,
                      ),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ServiceInfoScreen()));
                        },
                        child: Text(
                          'NEXT',
                          style: TextStyle(
                            fontSize: 20.0,
                            letterSpacing: 1.5,
                            color: Colors.grey[100],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
