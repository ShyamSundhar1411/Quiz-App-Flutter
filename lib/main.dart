import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
  var questions = [
    {
      "questionText": "What's your favorite Color ?",
      'answers': [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 5},
        {"text": "White", "score": 3},
      ],
    },
    {
      "questionText": "What's your favorite animal ?",
      "answers": [
        {"text": "Lion", "score": 3},
        {"text": "Tiger", "score": 5},
        {"text": "Black Panther", "score": 10}
      ],
    },
    {
      "questionText": "What's your favorite anime ?",
      "answers": [
        {"text": "Fairy Tail", "score": 3},
        {"text": "Shingeki No Kyojin", "score": 5},
        {"text": "Boku No Hero Academia", "score": 5}
      ],
    },
  ];
  var _totalScore = 0;
  void _answerQuesiton(int score) {
    _totalScore += score;
    setState(
      () {
        _questionIndex += 1;
      },
    );
    if (_questionIndex < questions.length) {
      print("We have more questions");
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < questions.length
            ? Quiz(_answerQuesiton, questions, _questionIndex)
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
