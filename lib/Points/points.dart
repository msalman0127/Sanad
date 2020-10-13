import 'package:flutter/material.dart';
import 'package:sanad_screens/helperFunctions/commonFunctions.dart';

class Points extends StatefulWidget {
  @override
  _PointsState createState() => _PointsState();
}

class _PointsState extends State<Points> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: Drawer(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: deviceHeight(context),
                  width: deviceWidth(context) * 0.85,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/10.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          child: Tab(
                            icon: Image.asset(
                              "images/5.png",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        padding: EdgeInsets.only(top: 10.0),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'My Account',
                            style: TextStyle(
                              fontSize: 18.0,
                              letterSpacing: 2.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          child: Tab(
                            icon: Image.asset(
                              "images/6.png",
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        padding: EdgeInsets.only(top: 10.0),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'My Orders',
                            style: TextStyle(
                              fontSize: 18.0,
                              letterSpacing: 2.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          child: Tab(
                            icon: Image.asset(
                              "images/7.png",
                              // color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        padding: EdgeInsets.only(top: 10.0),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'My Points',
                            style: TextStyle(
                              fontSize: 18.0,
                              letterSpacing: 2.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          child: Tab(
                            icon: Image.asset(
                              "images/8.png",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        padding: EdgeInsets.only(top: 10.0),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Contact Us',
                            style: TextStyle(
                              fontSize: 18.0,
                              letterSpacing: 2.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          child: Tab(
                            icon: Image.asset(
                              "images/9.png",
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        padding: EdgeInsets.only(top: 10.0),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Log Out',
                            style: TextStyle(
                              fontSize: 18.0,
                              letterSpacing: 2.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
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
            left: 20,
            top: 30,
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.blue,
                size: 40.0,
              ),
              onPressed: () => scaffoldKey.currentState.openEndDrawer(),
            ),
          ),
          Positioned(
            top: 40,
            left: 120,
            child: Row(
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  child: Tab(
                    icon: Image.asset(
                      "images/22.png",
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'POINTS',
                    style: TextStyle(
                        fontSize: 20.0, letterSpacing: 1.0, color: Colors.blue),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 150.0,
            left: 32.0,
            child: Container(
              height: deviceHeight(context) * 0.8,
              width: deviceWidth(context) * 0.85,
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 0.0),
                    child: Container(
                      child: Text(
                        'You have',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          letterSpacing: 2.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Container(
                      height: 120.0,
                      width: 120.0,
                      child: Tab(
                        icon: Image.asset(
                          "images/23.png",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Text(
                      '1000 POINTS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                        letterSpacing: 2.5,
                        color: Colors.lightBlue,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
                    child: Container(
                      child: Text(
                        'earn points by sharing your code with friends & making orders',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          letterSpacing: 2.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40.0, 20.0, 40, 0),
                    child: Text(
                      'Points history:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        letterSpacing: 2.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Code 1234 ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        letterSpacing: 2.0,
                        color: Colors.black,
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
