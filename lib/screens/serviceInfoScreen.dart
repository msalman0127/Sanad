import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanad_screens/commonWidgets/heading.dart';
import 'package:sanad_screens/commonWidgets/round_button_flexible.dart';
import 'package:sanad_screens/consts/colors.dart';
import 'package:sanad_screens/helperFunctions/commonFunctions.dart';
import 'package:sanad_screens/screens/session_timings_screen.dart';

class ServiceInfoScreen extends StatelessWidget {
  static String id = 'ServiceInfo';
  const ServiceInfoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Heading(title: 'SERVICE PACKAGE'),
          textFields(context),
          SizedBox(height: deviceHeight(context) * 0.2),
          RoundButtonFlexible(
              text: 'CONTINUE',
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SessionTimingsScreen()));
              },
              height: 50,
              width: deviceWidth(context))
        ],
      ),
    );
  }

  Widget textFields(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 1.5,
                  ),
                ),
                hintText: 'Subscription Address',
                hintStyle: TextStyle(
                  // fontSize: 20.0,
                  //  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  decoration: TextDecoration.none,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 60.0)),
          ),
          SizedBox(
            height: 20.0,
          ),
          Stack(
            children: [
              TextField(
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1.5,
                      ),
                    ),
                    hintText: 'Add Address',
                    hintStyle: TextStyle(
                      //fontSize: 20.0,
                      //  fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      decoration: TextDecoration.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 90.0)),
              ),
              Positioned(
                  right: 80.0,
                  top: 10.0,
                  child: Icon(CupertinoIcons.add_circled))
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 1.5,
                  ),
                ),
                hintText: 'Subscription Length',
                hintStyle: TextStyle(
                  //fontSize: 20.0,
                  //  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  decoration: TextDecoration.none,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 60.0)),
          ),
          SizedBox(
            height: 40.0,
          ),
          ExpandableNotifier(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.lightBlueAccent),
              child: Expandable(
                collapsed: ExpandableButton(
                  child: Container(
                      height: 40.0,
                      width: 220.0,
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sessions Number',
                            style: TextStyle(color: white),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 30.0, right: 10.0),
                            child: Container(
                              width: 2.0,
                              height: 25.0,
                              color: white,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: white,
                          )
                        ],
                      ))),
                ),
                expanded: Container(
                  height: deviceHeight(context) * 0.4,
                  width: deviceWidth(context) * 0.7,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              '1 Session',
                              style: TextStyle(color: white),
                            ),
                            Spacer(),
                            Text(
                              'XX LE',
                              style: TextStyle(color: white),
                            )
                          ],
                        ),
                      ),
                      Container(height: 2.0, color: white),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              '5 Sessions',
                              style: TextStyle(color: white),
                            ),
                            Spacer(),
                            Text(
                              'XX LE',
                              style: TextStyle(color: white),
                            )
                          ],
                        ),
                      ),
                      Container(height: 2.0, color: white),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              '10 Sessions',
                              style: TextStyle(color: white),
                            ),
                            Spacer(),
                            Text(
                              'XX LE',
                              style: TextStyle(color: white),
                            )
                          ],
                        ),
                      ),
                      Container(height: 2.0, color: white),
                      SizedBox(
                        height: 5.0,
                      ),
                      ExpandableButton(
                          child: Icon(
                        Icons.keyboard_arrow_up,
                        color: white,
                      ))
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
