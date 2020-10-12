import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            top: 50,
            left: 100,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // Container which contains email and password text fields

          Positioned(
            top: 250,
            left: 30.0,
            child: Container(
              width: 350,
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //Email Text Field

                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2.5,
                            ),
                          ),
                          hintText: 'Username@sanad.com',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0),

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
                          hintText: '******',
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                            letterSpacing: 2.0,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),

                  // Login Button

                  Padding(
                    padding:
                        EdgeInsets.only(left: 90.0, right: 90.0, top: 20.0),
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.lightBlueAccent,
                      ),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'LOGIN',
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

          Positioned(
            top: 500,
            left: 110,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 2.0),
                  ),
                ),
              ),
            ),
          ),

          // Forgot password

          Positioned.fill(
            top: 520,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                child: Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                      fontSize: 15.0, letterSpacing: 1.5, color: Colors.black),
                ),
              ),
            ),
          ),

          //Don't have an account? Create Account

          Positioned.fill(
            top: 580,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'REGISTER NOW',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.blue,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
