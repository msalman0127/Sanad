import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sanad_screens/Points/points.dart';
import 'package:sanad_screens/helperFunctions/commonFunctions.dart';

class Ratings extends StatefulWidget {
  @override
  _RatingsState createState() => _RatingsState();
}

class _RatingsState extends State<Ratings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            top: 60,
            left: 95,
            child: Container(
              height: deviceHeight(context) * 0.3,
              width: deviceWidth(context) * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 260,
            left: 10.0,
            child: Container(
              height: deviceHeight(context) * 0.8,
              width: deviceWidth(context) * 0.95,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 80.0, top: 30.0, right: 80.0),
                    child: Container(
                      child: Text(
                        'Welcome Back Ahmed',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.0,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 60.0, top: 20.0, right: 60.0),
                    child: Text(
                      'Please Rate',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                  Text(
                    'Sakina\'s Performance',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Container(
                      height: 180,
                      width: 350,
                      decoration: BoxDecoration(),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(15.0, 10.0, 5.0, 10.0),
                                child: Text(
                                  'Appearance',
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontSize: 18.0,
                                      color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: RatingBar(
                                  initialRating: 4,
                                  minRating: 4,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 30.0,
                                  unratedColor: Colors.cyan[200],
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 2.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(15.0, 10.0, 5.0, 10.0),
                                child: Text(
                                  'Timing',
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontSize: 18.0,
                                      color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 68.0),
                                child: RatingBar(
                                  initialRating: 2,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  unratedColor: Colors.cyan[200],
                                  itemCount: 5,
                                  itemSize: 30.0,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 2.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(15.0, 10.0, 5.0, 10.0),
                                child: Text(
                                  'Cleanliness',
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontSize: 18.0,
                                      color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: RatingBar(
                                  initialRating: 5,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  unratedColor: Colors.cyan[200],
                                  itemCount: 5,
                                  itemSize: 30.0,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 2.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(15.0, 10.0, 5.0, 10.0),
                                child: Text(
                                  'Etiquette',
                                  style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontSize: 18.0,
                                      color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50.0),
                                child: RatingBar(
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  unratedColor: Colors.cyan[200],
                                  itemCount: 5,
                                  itemSize: 30.0,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 2.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 90.0, right: 90.0, top: 10.0),
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.lightBlue,
                      ),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Points()));
                        },
                        child: Text(
                          'SUBMIT',
                          style: TextStyle(
                            fontSize: 18.0,
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
