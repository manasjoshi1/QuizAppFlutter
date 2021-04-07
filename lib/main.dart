import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _qIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _qIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _qIndex += 1;
    });
    print(_qIndex);
  }

  @override
  Widget build(BuildContext context) {
    final _questions = [
      {
        'questionText': 'fav animal?',
        'answers': [
          {'text': 'Cat', 'score': 4},
          {'text': 'Dog', 'score': 10},
          {'text': 'Cat', 'score': 6}
        ],
      },
      {
        'questionText': 'fav color?',
        'answers': [
          {'text': 'Red', 'score': 10},
          {'text': 'Grey', 'score': 5},
          {'text': 'Black', 'score': 2}
        ],
      },
      {
        'questionText': 'fav book?',
        'answers': [
          {'text': 'Radhye', 'score': 10},
          {'text': 'Shriman Yogi', 'score': 10},
          {'text': 'Mrutyunjay', 'score': 10}
        ],
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: _qIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                qIndex: _qIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
