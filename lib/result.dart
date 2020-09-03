import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int score;
  final Function resetGame;

  Result(this.score, this.resetGame);

  String get totalPhrase{
    String resultText;
    if (score < 10){
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
          Column(
            children: [
              Text(
                'Your score: $score',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Score less than 10: Certified Programmer'),
              Text('Score greater than 10: You are Human, Congrats!'),
              Divider(),
            ],
          ),
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