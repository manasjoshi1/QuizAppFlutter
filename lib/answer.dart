import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectOption;
  final String answerText;

  Answer(this.selectOption, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: RaisedButton(
          color: Colors.indigo.shade300,
          child: Text(answerText),
          onPressed: selectOption),
    );
  }
}
