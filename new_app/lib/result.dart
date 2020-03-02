import 'package:flutter/material.dart';

class  Result extends StatelessWidget {
  final int resultScore;
  final Function resetFunction;
  Result(this.resetFunction, this.resultScore);

  String get resultPhrase{
    var resultText = 'You did it!';
    if(resultScore < 15){
      resultText = 'You are so innocent!';
    }
    else if(resultScore < 20){
      resultText = 'It is nice, though';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center( child: 
          Column(
            children: <Widget>[
              Text(resultPhrase,
                style: TextStyle( fontSize:24, fontWeight: FontWeight.bold)
              ),
              FlatButton(
              child: Text('Restart Quiz!',), 
              textColor: Colors.blueAccent,
              onPressed: resetFunction,
              ),

            ],
          ),
        );
  }
}