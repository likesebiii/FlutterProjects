import 'package:flutter/material.dart';


import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget{
 
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestions(){
    setState((){
      _questionIndex++;
    });
    
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText':  'What\'s your favorite color?',
        'answers': ['Black','Red','Green','White',]
      },
      {
        'questionText':  'What\'s your favorite animal?',
        'answers': ['Rabbit','Snale','Dog','Cat',]
      },
      {
        'questionText':  'Who\'s your best friend?',
        'answers': ['Horto','Hortopan','Horty','HORTOPAN',]
      },
      ];
    
    return MaterialApp(
      home: Scaffold( 
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
              return Answer(_answerQuestions, answer);
            }),
          ],
        ),
      ), 
    );
  }


}