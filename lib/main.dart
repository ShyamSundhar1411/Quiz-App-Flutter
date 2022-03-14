import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstWidget());
}

class MyFirstWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyFirstWidgetState();
  }
}

class MyFirstWidgetState extends State<MyFirstWidget> {
  var questionIndex = 0;
  void answerQuesiton() {
    setState(
      () {
        questionIndex += 1;
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
          Text(
            questions[questionIndex],
          ),
          RaisedButton(
            child: Text("Answer 1"),
            onPressed: answerQuesiton,
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
