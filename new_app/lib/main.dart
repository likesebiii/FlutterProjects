import 'package:flutter/material.dart';


import './question.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget{
 
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestions(){
    setState((){
      _questionIndex++;
    });
    
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      ];
    
    return MaterialApp(
      home: Scaffold( 
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions.elementAt(_questionIndex),
            ),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestions,),
            RaisedButton(child: Text('Answer 2'), onPressed: () => print('Answer 2!'),),
            RaisedButton(child: Text('Answer 3'), onPressed: () { print('Answer 3!'); },),
          ],
        ),
      ), 
    );
  }


}