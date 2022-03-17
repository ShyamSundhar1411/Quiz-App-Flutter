import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int myScore;
  final Function restarter;
  Result(this.myScore,this.restarter);
  String get resultPhrase {
    var phrase = "Your score is " + myScore.toString();
    return phrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(child: Text("Try Again !"),onPressed: this.restarter,)
        ],
      ),
    );
  }
}
