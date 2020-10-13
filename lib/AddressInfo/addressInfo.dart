import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanad_screens/helperFunctions/commonFunctions.dart';

class AddressInfo extends StatefulWidget {
  @override
  _AddressInfoState createState() => _AddressInfoState();
}

class _AddressInfoState extends State<AddressInfo> {
  DateTime _dateTime;
  int group = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ADDRESS INFO',
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
            top: 20.0,
            left: 32.0,
            child: Container(
              height: deviceHeight(context) * 0.9,
              width: deviceWidth(context) * 0.85,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0, top: 50.0),
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
                          'Same As Billing Address',
                          style: TextStyle(
                            fontSize: 17.0,
                            letterSpacing: 1.5,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
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
                            left: 80.0,
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
                          hintText: 'District',
                          contentPadding: EdgeInsets.only(
                            left: 80.0,
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
                          hintText: 'Apartment Number',
                          contentPadding: EdgeInsets.only(
                            left: 80.0,
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
                          hintText: 'Floor Number',
                          contentPadding: EdgeInsets.only(
                            left: 80.0,
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
                        EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Container(
                            height: 30.0,
                            width: 20.0,
                            child: Tab(
                              icon: Image.asset("images/4.png"),
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          padding: EdgeInsets.only(top: 10.0),
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Choose Location',
                              style: TextStyle(
                                fontSize: 18.0,
                                letterSpacing: 1.5,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 100.0, right: 100.0, top: 50.0),
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.lightBlueAccent,
                      ),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'DONE',
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
