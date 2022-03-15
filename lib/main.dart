import 'package:flutter/material.dart';
import './question.dart';

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
      "What's your favorite Color ?",
      "What's your favorite animal ?",
      "What's your favorite anime ?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(children: [
          Question(
            questions[_questionIndex],
          ),
          RaisedButton(
            child: Text("Answer 1"),
            onPressed: _answerQuesiton,
          ),
          RaisedButton(
            child: Text("Answer 2"),
            onPressed: _answerQuesiton,
          ),
          RaisedButton(
            child: Text("Answer 3"),
            onPressed: _answerQuesiton,
          ),
        ]),
      ),
    );
  }
}
