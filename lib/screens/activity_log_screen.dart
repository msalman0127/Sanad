import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:sanad_screens/commonWidgets/heading.dart';
import 'package:sanad_screens/consts/colors.dart';
import 'package:sanad_screens/helperFunctions/commonFunctions.dart';

class ActivityLogScreen extends StatelessWidget {
  static String id = 'activity';
  const ActivityLogScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Heading(title: 'Activity Log'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              children: [
                Container(
                  width: deviceWidth(context) * 0.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          child: Tab(
                            icon: Image.asset(
                              "images/order-list.png",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: deviceWidth(context) * 0.4,
                  child: Text('ACTIVITY LOG',
                      style: TextStyle(
                          color: blue, fontSize: 20.0, letterSpacing: 1.0)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          table()
        ],
      ),
    );
  }

  table() {
    return Container(
      height: 400,
      child: HorizontalDataTable(
        leftHandSideColumnWidth: 120.0,
        rightHandSideColumnWidth: 280.0,
        isFixedHeader: true,
        leftHandSideColBackgroundColor: Colors.grey[300],
        rightHandSideColBackgroundColor: Colors.grey[300],
        rowSeparatorWidget: const Divider(
          color: Colors.red,
          height: 2.0,
          thickness: 0.0,
        ),
        headerWidgets: [
          Container(
              height: 60.0,
              width: 120.0,
              color: Colors.blue[300],
              child: Center(
                  child: Text(
                'Date',
                style: TextStyle(
                  color: white,
                  fontSize: 20.0,
                ),
              ))),
          Container(
              height: 60.0,
              width: 120.0,
              color: Colors.blue[300],
              child: Center(
                  child: Text(
                'Name',
                style: TextStyle(
                  color: white,
                  fontSize: 20.0,
                ),
              ))),
          Container(
              height: 60.0,
              width: 160.0,
              color: Colors.blue[300],
              child: Center(
                  child: Text(
                'Feedback',
                style: TextStyle(
                  color: white,
                  fontSize: 20.0,
                ),
              ))),
        ],
        leftSideChildren: [Container(child: Text(''))],
        rightSideChildren: [Text(''), Text('')],
      ),
    );
  }
}
