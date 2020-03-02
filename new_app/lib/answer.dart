import 'package:flutter/material.dart';

class  Answer extends StatelessWidget {

  final Function selectHandler;
  String answerText;

  Answer(this.selectHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:  RaisedButton(
        color: Colors.blueAccent,
        textColor: Colors.black87,
        child: Text(answerText), 
        onPressed: selectHandler,
      ),
    );
  }
}