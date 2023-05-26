import 'package:flutter/material.dart';
import 'package:trivia_app/screens/quiz/quiz_screen.dart';

import 'Question.dart';
import 'options.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50)),
          child: Text(
            sample_data[0]['question'],
            style: TextStyle(fontSize: 20),
          ),
        ),
        Divider(height: 40,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 300,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50)),
            child: Column(
              children: [
                RadioButtonGroupWidget(),
                // Spacer(),
                // options(),
                // Spacer(),
                // options(),
                // Spacer(),
                // options(),
              ],
            ),
          ),
        )
      ],
    );
  }
}