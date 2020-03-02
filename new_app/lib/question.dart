import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;
  

  Question(String questionText){
    this.questionText = questionText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //this command takes all space from the layout
      margin: EdgeInsets.all(20),//margin is spacind around the container 
      child: Text(questionText, 
              style: TextStyle(fontSize: 28),
              textAlign: TextAlign.center,
              ),
    );
  }
}