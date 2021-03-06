import 'package:flutter/material.dart';
import 'package:sanad_screens/OrderSettings/orderSettings.dart';
import 'package:sanad_screens/helperFunctions/commonFunctions.dart';
import 'package:sanad_screens/screens/activity_log_screen.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
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
                  width: deviceWidth(context),
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
                color: Colors.lightBlue,
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
                      "images/12.png",
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'ORDER 1234',
                    style: TextStyle(
                        fontSize: 20.0,
                        letterSpacing: 1.0,
                        color: Colors.lightBlue),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 200,
            left: 10.0,
            child: Container(
              height: deviceHeight(context) * 0.5,
              width: deviceWidth(context) * 0.95,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5.0, right: 10.0),
                    child: Container(
                      height: 170,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.lightBlueAccent,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(0, 30.0, 0, 10.0),
                            child: Container(
                              height: 70.0,
                              width: 70.0,
                              child: Tab(
                                icon: Image.asset(
                                  "images/13.png",
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ActivityLogScreen()));
                            },
                            child: Text(
                              'ACTIVITY LOG',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                letterSpacing: 2.0,
                                color: Colors.grey[100],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      height: 170,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.lightBlueAccent,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(0, 30.0, 0, 10.0),
                            child: Container(
                              height: 70.0,
                              width: 70.0,
                              child: Tab(
                                icon: Image.asset(
                                  "images/14.png",
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OrderSettings()));
                            },
                            child: Text(
                              'ORDER SETTINGS',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                letterSpacing: 2.0,
                                color: Colors.grey[100],
                              ),
                            ),
                          ),
                        ],
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
