import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;

  Question(String questionText){
    this.questionText = questionText;
  }

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}