import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  Function onPressFunction;
  final String answerText;
  Answer(this.onPressFunction, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Color.fromARGB(255, 18, 134, 230),
          textColor: Colors.white,
          child: Text(answerText),
          onPressed: this.onPressFunction,
        ));
  }
}
