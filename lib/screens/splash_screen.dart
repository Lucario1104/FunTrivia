import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trivia_app/screens/dashboard_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashBoardScreen(),));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: double.infinity, width: double.infinity,
        color: Colors.deepPurpleAccent,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Column(
              children: [
                Text(
                  'FUN',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'MyFont',
                    shadows: [
                      Shadow(color: Colors.black, offset: Offset(5, 6))
                    ]
                  ),
                ),
                Text(
                  'TRIVIA',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'MyFont',
                      shadows: [
                        Shadow(color: Colors.black, offset: Offset(5, 6))
                      ]
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    ));
  }
}
