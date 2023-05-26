import 'package:flutter/material.dart';
import 'package:trivia_app/screens/quiz/quiz_screen.dart';


class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              '         FUN ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'MyFont',
                  shadows: [
                    Shadow(
                        blurRadius: 8,
                        color: Colors.deepPurpleAccent,
                        offset: Offset(4, 5))
                  ]),
            ),
            Text(
              'TRIVIA',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.deepPurpleAccent,
                  fontFamily: 'MyFont'),
            )
          ],
        ),
        flexibleSpace: Stack(
          children: [
            Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.grey, Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter))),
          ],
        ),
      ),

      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Galaxy.png"),
                  fit: BoxFit.cover,
                )),
          ),

          Center(
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => QuizScreen(),));
              },
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent.withOpacity(.6),
                    border: Border.all(width: 2, color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(child: Text('Let\'s Start!!', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
