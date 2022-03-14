import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstWidget());
}

class MyFirstWidget extends StatelessWidget {
  var questionIndex = 0;
  void answerQuesiton() {
    questionIndex += 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite Color ?",
      "What's your favorite animal ?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(children: [
          Text(
            questions[questionIndex],
          ),
          RaisedButton(
            child: Text("Answer 1"),
            onPressed:answerQuesiton,
          ),
          RaisedButton(
            child: Text("Answer 2"),
            onPressed: answerQuesiton,
          ),
          RaisedButton(
            child: Text("Answer 3"),
            onPressed: answerQuesiton,
          ),
        ]),
      ),
    );
  }
}
