import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function reset;
  Result(this.resultScore, this.reset);

  String get resultPhrase {
    var resultText = 'Thanks For Attending The Test, Your Score Is: ' +
        resultScore.toString();
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        FlatButton(
          onPressed: reset,
          child: Text('Restart Quiz'),
          color: Colors.black38,
        ),
      ],
    ));
  }
}
