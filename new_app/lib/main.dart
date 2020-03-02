import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget{
 
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = [
      {
        'questionText':  'What\'s your favorite color?',
        'answers': [
          {'text': 'Black', 'score':10},
          {'text': 'Red', 'score':5},
          {'text': 'Green','score':4},
          {'text': 'White', 'score':12},
        ]
      },
      {
        'questionText':  'What\'s your favorite animal?',
        'answers': [
          {'text': 'Dog', 'score':10},
          {'text': 'Cat', 'score':5},
          {'text': 'Pig','score':4},
          {'text': 'Rabbit', 'score':12},
        ]
      },
      {
        'questionText':  'Who\'s your best friend?',
        'answers': [
          {'text': 'Ho', 'score':10},
          {'text': 'rt', 'score':5},
          {'text': 'op','score':4},
          {'text': 'an', 'score':12},
        ]
      },
  ];

  void _answerQuestions(int score){

    _totalScore = _totalScore +  score;

    setState((){
      _questionIndex++;
    });
    print('Answer chosen!');
  }

  void _resetQuiz(){
    setState((){
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold( 
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length? Quiz(
          answerQuestions: _answerQuestions, 
          questions: _questions,
          questionIndex: _questionIndex) : 
        Result(_resetQuiz, _totalScore),
      ), 
    );
  }


}