import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanad_screens/Order/order.dart';
import 'package:sanad_screens/helperFunctions/commonFunctions.dart';

class TrackOrder extends StatefulWidget {
  @override
  _TrackOrderState createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
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
            top: 80,
            left: 100,
            child: Container(
              height: deviceHeight(context) * 0.3,
              width: deviceWidth(context) * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 280,
            left: 10.0,
            child: Container(
              height: deviceHeight(context) * 0.8,
              width: deviceWidth(context) * 0.95,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40.0),
                    child: Container(
                      child: Text(
                        'Hi Ahmed,',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17.0,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 60.0, top: 20.0, right: 60.0),
                    child: Container(
                      child: Text(
                        'Would you like to track any of these orders?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.0,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Container(
                      height: deviceHeight(context) * 0.17,
                      width: deviceWidth(context),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.lightBlue,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(15.0, 10.0, 5.0, 10.0),
                                child: Text(
                                  'Order 1',
                                  style: TextStyle(
                                      letterSpacing: 1.0, color: Colors.white),
                                ),
                              ),
                              Container(
                                height: 20.0,
                                width: 1.0,
                                color: Colors.white,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                                child: Text(
                                  'Address',
                                  style: TextStyle(
                                      color: Colors.white, letterSpacing: 1.0),
                                ),
                              ),
                              Container(
                                height: 20.0,
                                width: 1.0,
                                color: Colors.white,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                                child: Text(
                                  'End Date',
                                  style: TextStyle(
                                      color: Colors.white, letterSpacing: 1.0),
                                ),
                              ),
                              Container(
                                height: 20.0,
                                width: 1.0,
                                color: Colors.white,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 10.0),
                                child: Container(
                                  height: 20.0,
                                  width: 20.0,
                                  child: Tab(
                                    icon: Image.asset(
                                      "images/11.png",
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              FlatButton(
                                child: Text(
                                  'Edit Order',
                                  style: TextStyle(
                                      color: Colors.white, letterSpacing: 0.3),
                                ),
                              )
                            ],
                          ),
                          Divider(
                            thickness: 1.5,
                            color: Colors.white,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(15.0, 10.0, 5.0, 10.0),
                                child: Text(
                                  'Order 2',
                                  style: TextStyle(
                                      letterSpacing: 1.0, color: Colors.white),
                                ),
                              ),
                              Container(
                                height: 20.0,
                                width: 1.0,
                                color: Colors.white,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                                child: Text(
                                  'Address',
                                  style: TextStyle(
                                      color: Colors.white, letterSpacing: 1.0),
                                ),
                              ),
                              Container(
                                height: 20.0,
                                width: 1.0,
                                color: Colors.white,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                                child: Text(
                                  'End Date',
                                  style: TextStyle(
                                      color: Colors.white, letterSpacing: 1.0),
                                ),
                              ),
                              Container(
                                height: 20.0,
                                width: 1.0,
                                color: Colors.white,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 10.0),
                                child: Container(
                                  height: 20.0,
                                  width: 20.0,
                                  child: Tab(
                                    icon: Image.asset(
                                      "images/11.png",
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              FlatButton(
                                child: Text(
                                  'Edit Order',
                                  style: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 0.3,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: Text(
                        'Or',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17.0,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0),
                    child: Container(
                      height: deviceHeight(context) * 0.08,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.lightBlue,
                      ),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Order()));
                        },
                        child: Text(
                          'ADD NEW ORDER',
                          style: TextStyle(
                            fontSize: 18.0,
                            letterSpacing: 2.0,
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
