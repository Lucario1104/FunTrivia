import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:trivia_app/screens/quiz/components/options.dart';
import 'package:trivia_app/screens/quiz/quiz_screen.dart';
import 'package:trivia_app/screens/quiz/components/Question.dart';
import 'package:trivia_app/screens/quiz/components/response.dart';

class DataFromAPI extends StatefulWidget {
  @override
  DataFromAPIState createState() => DataFromAPIState();
}

class DataFromAPIState extends State<DataFromAPI> {
  getData() async {
    final queryParameters = {
      'amount': '10',
      'type': 'multiple',
    };
    var response =
        await http.get(Uri.https('opentdb.com', 'api.php', queryParameters));
    var jsonData = jsonDecode(response.body);
    List<Question> questionList = [];
    for (var u in jsonData['results']) {
      List<String> incAns = List<String>.from(u['incorrect_answers'] as List);
      Question question = Question(
          category: u["category"],
          difficulty: u["difficulty"],
          type: u["type"],
          question: u["question"],
          incorrect_answers: incAns,
          correct_answer: u["correct_answer"]);
      questionList.add(question);
    }
    return questionList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return Container(
                child: Center(child: Text('Loading...')),
              );
            } else {
              //print(snapshot.data);
              return Container(
                child: Center(child: Text('Loading...')),
              );
            }
          }),
    ));
  }
}
