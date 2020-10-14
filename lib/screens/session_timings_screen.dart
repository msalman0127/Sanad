import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:sanad_screens/TrackOrder/trackOrder.dart';
import 'package:sanad_screens/commonWidgets/heading.dart';
import 'package:sanad_screens/commonWidgets/round_button_flexible.dart';
import 'package:sanad_screens/consts/colors.dart';
import 'package:sanad_screens/helperFunctions/commonFunctions.dart';

class SessionTimingsScreen extends StatefulWidget {
  static String id = 'session';
  SessionTimingsScreen({Key key}) : super(key: key);

  @override
  _SessionTimingsScreenState createState() => _SessionTimingsScreenState();
}

class _SessionTimingsScreenState extends State<SessionTimingsScreen> {
  bool maleStatus = true;
  bool femaleStatus = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Heading(title: 'SESSION TIMINGS'),
          bannerTextAboveCalender(),
          calender(),
          colorIdentification(),
          maleFemaleButtons(),
          RoundButtonFlexible(
              text: 'Done',
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => TrackOrder()));
              },
              height: 50,
              width: deviceWidth(context)),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }

  bannerTextAboveCalender() {
    return Column(
      children: [
        Text(
          'Based on the size of your apartment do you',
          style: TextStyle(color: Colors.black, letterSpacing: 2.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'need',
              style: TextStyle(color: Colors.black, letterSpacing: 2.0),
            ),
            Text(
              ' one ',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                letterSpacing: 2.0,
                fontSize: 20.0,
              ),
            ),
            Text(
              'or',
              style: TextStyle(color: Colors.black, letterSpacing: 2.0),
            ),
            Text(
              ' two ',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                letterSpacing: 2.0,
                fontSize: 20.0,
              ),
            ),
            Text(
              'Sanad employees.',
              style: TextStyle(color: Colors.black, letterSpacing: 2.0),
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Please Highlight your desired session upon',
          style: TextStyle(color: Colors.black, letterSpacing: 2.0),
        ),
        Text(
          'the availability calender below.',
          style: TextStyle(color: Colors.black, letterSpacing: 2.0),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          '*Please note that sessions can be changed',
          style: TextStyle(color: Colors.black, letterSpacing: 2.0),
        ),
        Text(
          'Within a three days notice.',
          style: TextStyle(color: Colors.black, letterSpacing: 2.0),
        )
      ],
    );
  }

  calender() {
    DateTime _currentDate;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      child: CalendarCarousel<Event>(
        selectedDayButtonColor: blue,
        onDayPressed: (DateTime date, List<Event> events) {
          this.setState(() => _currentDate = date);
        },
        weekendTextStyle: TextStyle(
          color: blue,
        ),
        thisMonthDayBorderColor: Colors.lightBlueAccent,
        todayButtonColor: Colors.lightBlueAccent,
        weekDayBackgroundColor: Colors.lightBlueAccent,
        weekdayTextStyle: TextStyle(
          color: white,
        ),

        customDayBuilder: (
          bool isSelectable,
          int index,
          bool isSelectedDay,
          bool isToday,
          bool isPrevMonthDay,
          TextStyle textStyle,
          bool isNextMonthDay,
          bool isThisMonthDay,
          DateTime day,
        ) {},
        weekFormat: false,
        // markedDatesMap: _markedDateMap,
        height: 380.0,
        selectedDateTime: _currentDate,
        daysHaveCircularBorder: true,
      ),
    );
  }

  colorIdentification() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Column(
            children: [
              Container(
                height: 15.0,
                width: 15.0,
                color: Colors.blue[900],
              ),
              SizedBox(
                height: 3.0,
              ),
              Container(
                width: 60,
                child: Text(
                  'Booked                  ',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Container(
              height: 15.0,
              width: 15.0,
              color: blue,
            ),
            SizedBox(
              height: 3.0,
            ),
            Container(
              width: 60,
              child: Text(
                'Selected date',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              height: 15.0,
              width: 15.0,
              color: Colors.blue[400],
            ),
            SizedBox(
              height: 3.0,
            ),
            Container(
                width: 100,
                child: Text(
                  'Two Sanad employees',
                  textAlign: TextAlign.center,
                )),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Column(
            children: [
              Container(
                height: 15.0,
                width: 15.0,
                color: Colors.grey,
              ),
              SizedBox(
                height: 3.0,
              ),
              Text(
                'Free',
                textAlign: TextAlign.center,
              )
            ],
          ),
        )
      ],
    );
  }

  maleFemaleButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Text('Male Present'),
              Spacer(),
              Container(
                child: FlutterSwitch(
                  width: 95.0,
                  height: 35.0,
                  valueFontSize: 15.0,
                  toggleSize: 15.0,
                  value: maleStatus,
                  borderRadius: 30.0,
                  padding: 8.0,
                  showOnOff: true,
                  inactiveColor: Colors.cyan[100],
                  activeColor: blue,
                  onToggle: (val) {
                    setState(() {
                      maleStatus = val;
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Container(
            height: 1.5,
            width: deviceWidth(context),
            color: blue,
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Text('Female Present'),
              Spacer(),
              Container(
                child: FlutterSwitch(
                  width: 95.0,
                  height: 35.0,
                  valueFontSize: 15.0,
                  toggleSize: 15.0,
                  value: femaleStatus,
                  borderRadius: 30.0,
                  padding: 8.0,
                  inactiveColor: Colors.cyan[100],
                  activeColor: blue,
                  showOnOff: true,
                  onToggle: (val) {
                    setState(() {
                      femaleStatus = val;
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Container(
            height: 1.5,
            width: deviceWidth(context),
            color: blue,
          ),
        ],
      ),
    );
  }
}
