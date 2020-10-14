import 'package:flutter/material.dart';
import 'package:sanad_screens/AddressInfo/addressInfo.dart';
import 'package:sanad_screens/commonWidgets/backgroundImage.dart';
import 'package:sanad_screens/commonWidgets/heading.dart';
import 'package:sanad_screens/commonWidgets/round_button.dart';
import 'package:sanad_screens/consts/colors.dart';
import 'package:sanad_screens/helperFunctions/commonFunctions.dart';

class PaymentInfoScreen extends StatelessWidget {
  static String id = 'payment';
  TextEditingController cardName = TextEditingController();
  TextEditingController cardNumber = TextEditingController();
  TextEditingController cardExpiry = TextEditingController();
  TextEditingController cardCvv = TextEditingController();
  TextEditingController billingAddress = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          ListView(children: [heading(), cardDetails(context)])
        ],
      ),
    );
  }

  Widget heading() {
    return Heading(title: 'PAYMENT INFO');
  }

  Widget cardDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                hintText: 'Cardholder\'s Name',
                hintStyle: TextStyle(
                  //fontSize: 20.0,
                  //  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  decoration: TextDecoration.none,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 80.0)),
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
              hintText: 'Credit Card Number',
              contentPadding: EdgeInsets.symmetric(horizontal: 80.0),
              hintStyle: TextStyle(
                //fontSize: 20.0,
                //  fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                decoration: TextDecoration.none,
              ),
            ),
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
              hintText: 'Expiration Date',
              contentPadding: EdgeInsets.symmetric(horizontal: 80.0),
              hintStyle: TextStyle(
                //fontSize: 20.0,
                //  fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40.0,
                width: 100.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.lightBlueAccent),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'MM',
                      style: TextStyle(color: white),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        color: white,
                        height: 25.0,
                        width: 2.0,
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          showDatePicker(
                                  context: context,
                                  initialDatePickerMode: DatePickerMode.day,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2001),
                                  lastDate: DateTime(2021))
                              .then((value) => null);
                        },
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: white,
                        ))
                  ],
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                height: 40.0,
                width: 100.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.lightBlueAccent),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'YYYY',
                      style: TextStyle(color: white),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container(
                        color: white,
                        height: 25.0,
                        width: 2.0,
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          showDatePicker(
                                  context: context,
                                  initialDatePickerMode: DatePickerMode.year,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2001),
                                  lastDate: DateTime(2021))
                              .then((value) => null);
                        },
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: white,
                        ))
                  ],
                ),
              )
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
              hintText: 'CVV',
              contentPadding: EdgeInsets.symmetric(horizontal: 80.0),
              hintStyle: TextStyle(
                //fontSize: 20.0,
                //  fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                decoration: TextDecoration.none,
              ),
            ),
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
              hintText: 'Billing Address',
              contentPadding: EdgeInsets.symmetric(horizontal: 80.0),
              hintStyle: TextStyle(
                //fontSize: 20.0,
                //  fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          SizedBox(
            height: 60.0,
          ),
          RoundButton(
            text: 'CONTINUE',
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => AddressInfo()));
            },
          )
        ],
      ),
    );
  }
}
