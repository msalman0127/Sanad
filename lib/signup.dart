import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  DateTime _dateTime;
  int group = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SIGN UP',
          style: TextStyle(
            color: Colors.blue,
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.blue,
        ),
        backgroundColor: Colors.grey[100],
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
            left: 32.0,
            child: Container(
              width: 350,
              height: 620,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2.5,
                            ),
                          ),
                          prefixIcon: Container(
                            margin: EdgeInsets.only(left: 20.0, right: 40.0),
                            child: Icon(
                              Icons.person_outline,
                              size: 30.0,
                            ),
                          ),
                          hintText: 'Name',
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                            //  fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                            decoration: TextDecoration.none,
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
                              width: 2.5,
                            ),
                          ),
                          prefixIcon: Container(
                            margin: EdgeInsets.only(left: 20.0, right: 40.0),
                            child: Icon(
                              Icons.mail_outline,
                              size: 30.0,
                            ),
                          ),
                          hintText: 'Email Address',
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                            //  fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Password Text Field
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2.5,
                            ),
                          ),
                          prefixIcon: Container(
                            margin: EdgeInsets.only(left: 20.0, right: 40.0),
                            child: Icon(
                              Icons.lock_outline,
                              size: 30.0,
                            ),
                          ),
                          hintText: 'Choose Password',
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                            // fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                            decoration: TextDecoration.none,
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
                              width: 2.5,
                            ),
                          ),
                          contentPadding: EdgeInsets.only(left: 90.0),
                          hintText: 'Confirm Password',
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                            //fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Container(
                      child: TextField(
                        onTap: () {
                          showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2001),
                                  lastDate: DateTime(2021))
                              .then((date) {
                            setState(() {
                              _dateTime = date;
                            });
                          });
                        },
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2.5,
                            ),
                          ),
                          prefixIcon: Container(
                            margin: EdgeInsets.only(left: 20.0, right: 40.0),
                            child: Icon(
                              Icons.calendar_today,
                              size: 30.0,
                            ),
                          ),
                          hintText: _dateTime == null
                              ? 'Birth Date'
                              : _dateTime.toString(),
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                            // fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                            decoration: TextDecoration.none,
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
                              width: 2.5,
                            ),
                          ),
                          contentPadding: EdgeInsets.only(left: 90.0),
                          hintText: 'Gender',
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                            //fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(.0),
                    child: Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: group,
                          onChanged: (T) {
                            print(T);

                            setState(() {
                              group = T;
                            });
                          },
                        ),
                        Text(
                          'Female',
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Radio(
                          value: 2,
                          groupValue: group,
                          onChanged: (T) {
                            print(T);

                            setState(() {
                              group = T;
                            });
                          },
                        ),
                        Text(
                          'Male',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ],
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
                              width: 2.5,
                            ),
                          ),
                          prefixIcon: Container(
                            margin: EdgeInsets.only(left: 20.0, right: 40.0),
                            child: Icon(
                              Icons.phone,
                              size: 30.0,
                            ),
                          ),
                          hintText: 'Phone Number',
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                            //  fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding:
                        EdgeInsets.only(left: 90.0, right: 90.0, top: 30.0),
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.lightBlueAccent,
                      ),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'CONTINUE',
                          style: TextStyle(
                            fontSize: 20.0,
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
