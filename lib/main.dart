import 'package:flutter/material.dart';
import 'package:trivia_app/screens/quiz/components/DataFromApi.dart';
import 'package:trivia_app/screens/dashboard_screen.dart';
import 'package:trivia_app/screens/quiz/quiz_screen.dart';
import 'package:trivia_app/screens/splash_screen.dart';

void main() {
  runApp(TriviaApp());
}

class TriviaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: SplashScreen(),
    );
  }
}

