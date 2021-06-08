import 'dart:ui';

import 'package:flutter/material.dart';

import 'dart:math' as math;

import 'package:real_estate_ui/screens/HomeScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(36, 36, 36, 1),
      body: Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Text(
                'Welcome \n Your Dream Home',
                style: TextStyle(
                  color: Color.fromRGBO(168, 168, 168, 1),
                  fontSize: 40.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Stack(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'assets/images/house.png',
                    width: 400.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 200.0),
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationX(math.pi),
                    child: Opacity(
                      opacity: 0.1,
                      child: Image.asset(
                        'assets/images/house.png',
                        width: 400.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 10.0),
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                ),
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 32,
                    color: Color.fromRGBO(168, 168, 168, 1),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 80.0),
                  primary: Color.fromRGBO(87, 79, 56, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: RichText(
                text: TextSpan(
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromRGBO(168, 168, 168, 1),
                    ),
                    text: 'Don\'t have an account? ',
                    children: <TextSpan>[
                      TextSpan(
                          text: 'sign up',
                          style:
                              TextStyle(color: Color.fromRGBO(53, 51, 42, 1))),
                    ]),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
