import 'package:flutter/material.dart';
import 'package:sanad_screens/helperFunctions/commonFunctions.dart';

class AddressSettings extends StatefulWidget {
  @override
  _AddressSettingsState createState() => _AddressSettingsState();
}

class _AddressSettingsState extends State<AddressSettings> {
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
                      "images/21.png",
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'ADDRESS SETTINGS',
                    style: TextStyle(
                        fontSize: 20.0, letterSpacing: 1.0, color: Colors.blue),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 100.0,
            left: 32.0,
            child: Container(
              height: deviceHeight(context),
              width: deviceWidth(context) * 0.85,
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 1.5,
                            ),
                          ),
                          hintText: 'Building No., Street Name ',
                          contentPadding: EdgeInsets.only(
                            left: 50.0,
                            top: 15.0,
                            bottom: 5.0,
                          ),
                          hintStyle: TextStyle(
                            letterSpacing: 2.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 1.5,
                            ),
                          ),
                          hintText: 'District',
                          contentPadding: EdgeInsets.only(
                            left: 130.0,
                            top: 15.0,
                            bottom: 5.0,
                          ),
                          hintStyle: TextStyle(
                            letterSpacing: 2.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 1.5,
                            ),
                          ),
                          hintText: 'Apartment Number',
                          contentPadding: EdgeInsets.only(
                            left: 90.0,
                            top: 15.0,
                            bottom: 5.0,
                          ),
                          hintStyle: TextStyle(
                            letterSpacing: 2.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 1.5,
                            ),
                          ),
                          hintText: 'Floor Number',
                          contentPadding: EdgeInsets.only(
                            left: 120.0,
                            top: 15.0,
                            bottom: 5.0,
                          ),
                          hintStyle: TextStyle(
                            letterSpacing: 2.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 40.0, right: 40.0, top: 100.0),
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.lightBlue,
                      ),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'EDIT',
                          style: TextStyle(
                            fontSize: 20.0,
                            letterSpacing: 1.5,
                            color: Colors.grey[100],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 40.0, right: 40.0, top: 30.0),
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.cyan[200],
                      ),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'ADD NEW ADDRESS',
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
