import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 250,
            left: 30.0,
            child: Container(
              width: 350,
              height: 700,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 120, top: 60.0),
                    child: Container(
                      child: Text(
                        'Hi Ahmed,',
                        style: TextStyle(
                          fontSize: 17.0,
                          letterSpacing: 2.0,
                          decoration: TextDecoration.none,
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
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      height: 80,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.red,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 20.0),
                            child: Text(
                              'Order 1',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  letterSpacing: 1.0,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Container(
                              height: 20.0,
                              width: 1.0,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 20.0),
                            child: Text(
                              'Address',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Container(
                            height: 20.0,
                            width: 1.0,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 20.0),
                            child: Text(
                              'End Date',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Container(
                            height: 20.0,
                            width: 1.0,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 20.0),
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
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 20.0),
                            child: FlatButton(
                              onPressed: () {},
                              child: Text(
                                'Edit Order',
                                style: TextStyle(
                                    color: Colors.white, letterSpacing: 1.0),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0),
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.lightBlueAccent,
                      ),
                      child: FlatButton(
                        onPressed: () {},
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
