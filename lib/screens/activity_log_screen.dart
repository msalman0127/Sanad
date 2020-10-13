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
                      Container(
                        height: 50,
                        width: 30,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            image: DecorationImage(
                              image: AssetImage('images/order-icon1.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: deviceWidth(context) * 0.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Activity',
                          style: TextStyle(color: blue, fontSize: 30.0)),
                    ],
                  ),
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
        leftHandSideColumnWidth: 200.0,
        rightHandSideColumnWidth: 400.0,
        isFixedHeader: true,
        leftHandSideColBackgroundColor: Colors.grey[300],
        rightHandSideColBackgroundColor: Colors.grey[300],
        rowSeparatorWidget: const Divider(
          color: Colors.black54,
          height: 1.0,
          thickness: 0.0,
        ),
        headerWidgets: [
          Container(
              height: 40.0,
              width: 200.0,
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
              height: 40.0,
              width: 60.0,
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
              height: 40.0,
              width: 140.0,
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
