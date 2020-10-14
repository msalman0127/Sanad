import 'package:flutter/material.dart';
import 'package:sanad_screens/MyAccount/myAccount.dart';
import 'package:sanad_screens/helperFunctions/commonFunctions.dart';

class OrderSettings extends StatefulWidget {
  @override
  _OrderSettingsState createState() => _OrderSettingsState();
}

class _OrderSettingsState extends State<OrderSettings> {
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
                      "images/24.png",
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'ORDERS 1234',
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
                        'Your order number XXX is confirmed.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          letterSpacing: 2.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40.0, 0.0, 40, 0),
                    child: Text(
                      'Track progress of your order or Edit/Cancel your order from: ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        letterSpacing: 2.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
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
                    height: 30,
                    padding: EdgeInsets.only(top: 10.0),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyAccount()));
                      },
                      child: Text(
                        'My Orders',
                        style: TextStyle(
                          fontSize: 17.0,
                          letterSpacing: 1.5,
                          color: Colors.lightBlue,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: Container(
                      child: Text(
                        'Congratulations!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          letterSpacing: 2.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40.0, 3.0, 40, 0),
                    child: Text(
                      'You earned XXX points',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        letterSpacing: 2.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    'Track the progress of your points from: ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      letterSpacing: 2.0,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      child: Tab(
                        icon: Image.asset(
                          "images/7.png",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    padding: EdgeInsets.only(top: 10.0),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'My Points',
                        style: TextStyle(
                          fontSize: 17.0,
                          letterSpacing: 1.5,
                          color: Colors.lightBlue,
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
