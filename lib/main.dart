import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyFirstWidget());
}

class MyFirstWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFirstWidgetState();
  }
}

class _MyFirstWidgetState extends State<MyFirstWidget> {
  var _questionIndex = 0;
  void _answerQuesiton() {
    setState(
      () {
        _questionIndex += 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        "questionText": "What's your favorite Color ?",
        'answers': ["Black", "Red", "White"],
      },
      {
        "questionText": "What's your favorite animal ?",
        "answers": ["Lion", "Tiger", "Black Panther"],
      },
      {
        "questionText": "What's your favorite anime ?",
        "answers": [
          "Fairy Tail",
          "Shingeki No Kyojin",
          "Boku No Hero Academia"
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(children: [
          Question(
            questions[_questionIndex]["questionText"],
          ),
          ...(questions[_questionIndex]["answers"] as List<String>).map((answer){
            return Answer(_answerQuesiton, answer);
          }).toList()
        ]),
      ),
    );
  }
}
