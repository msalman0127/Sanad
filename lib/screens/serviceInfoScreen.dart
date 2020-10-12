import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanad_screens/commonWidgets/heading.dart';
import 'package:sanad_screens/consts/colors.dart';
import 'package:sanad_screens/helperFunctions/commonFunctions.dart';

class ServiceInfoScreen extends StatelessWidget {
  static String id = 'ServiceInfo';
  const ServiceInfoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [Heading(title: 'Service Package'), textFields(context)],
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
                    width: 2.5,
                  ),
                ),
                hintText: 'Subscription Address',
                hintStyle: TextStyle(
                  fontSize: 20.0,
                  //  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
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
                        width: 2.5,
                      ),
                    ),
                    hintText: 'Add Address',
                    hintStyle: TextStyle(
                      fontSize: 20.0,
                      //  fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      decoration: TextDecoration.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 60.0)),
              ),
              Positioned(
                  right: 130.0,
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
                    width: 2.5,
                  ),
                ),
                hintText: 'Subscription Length',
                hintStyle: TextStyle(
                  fontSize: 20.0,
                  //  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
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
                  borderRadius: BorderRadius.circular(20.0), color: blue),
              child: Expandable(
                collapsed: ExpandableButton(
                  child: Container(
                      height: 40.0,
                      width: 180.0,
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Sessions Number'),
                          Icon(Icons.arrow_drop_down)
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
                            Text('Session 1'),
                            Spacer(),
                            Text('XX LE')
                          ],
                        ),
                      ),
                      Container(height: 2.0, color: white),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text('Session 1'),
                            Spacer(),
                            Text('XX LE')
                          ],
                        ),
                      ),
                      Container(height: 2.0, color: white),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text('Session 1'),
                            Spacer(),
                            Text('XX LE')
                          ],
                        ),
                      ),
                      Container(height: 2.0, color: white),
                      SizedBox(
                        height: 5.0,
                      ),
                      ExpandableButton(child: Text('See less'))
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
