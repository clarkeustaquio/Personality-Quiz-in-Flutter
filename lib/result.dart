import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int score;
  final Function resetGame;

  Result(this.score, this.resetGame);

  String get totalPhrase{
    String resultText;
    if (score < 6){
      resultText = "Certified Programmer";
    }else{
      resultText = "You are Human Congrats!";
    }

    return resultText;
  }


  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            totalPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            ),
          FlatButton(onPressed: resetGame, child: Text('Reset Quiz!'),),
          ],
        ),
      );
  }
}