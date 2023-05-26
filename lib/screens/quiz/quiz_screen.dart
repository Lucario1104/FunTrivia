import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trivia_app/screens/quiz/components/DataFromApi.dart';
import 'package:trivia_app/screens/dashboard_screen.dart';
import 'package:trivia_app/screens/quiz/components/timebar.dart';

import 'components/QuestionCard.dart';
import 'components/options.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Skip',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          )
        ],
      ),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/Galaxy.png"),
            fit: BoxFit.cover,
          )),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: timebar(),
                ),
                Divider(height: 80),
                Expanded(
                    child: PageView.builder(
                  itemBuilder: (context, index) => QuestionCard(),
                ))
              ],
            ),
          ),
        )
      ]),
    );
  }
}

