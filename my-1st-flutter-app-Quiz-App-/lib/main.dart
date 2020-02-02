import "package:flutter/material.dart";
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what\'s ur fav animal?',
      'answers': [
        {'text': 'dog', 'score': 10},
        {'text': 'rat', 'score': 5},
        {'text': 'snake', 'score': 3},
        {'text': 'horse', 'score': 1}
      ]
    },
    {
      'questionText': 'what\'s ur fav fruit?',
      'answers': [
        {'text': 'dog', 'score': 10},
        {'text': 'imli', 'score': 5},
        {'text': 'sev', 'score': 3},
        {'text': 'angur', 'score': 1}
      ]
    },
    {
      'questionText': 'what\'s ur fav sports?',
      'answers': [
        {'text': 'dog', 'score': 10},
        {'text': 'ludo', 'score': 5},
        {'text': 'badminoton', 'score': 3},
        {'text': 'kabaddi', 'score': 1}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalscore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
    _totalscore = 0;
    });
    
  }

  void _answerQuestion(int score) {
    _totalscore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("more qustions available");
    } else {
      print('no more');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: (_questionIndex < _questions.length)
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions)
          : Result(_totalscore,_resetQuiz),
    ));
  }
}
