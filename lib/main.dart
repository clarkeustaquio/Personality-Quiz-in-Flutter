import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  final questions = const [
      {
        'questionText': 'What do you prefer?',
        'answers': [
            {'text': 'Daylight', 'score': 10}, 
            {'text': 'Night', 'score': 1}, 
          ],
      },
      {
        'questionText': 'You often drink',
        'answers': [
            {'text': 'Coke', 'score': 10}, 
            {'text': 'Coffee', 'score': 1},  
            {'text': 'Juice', 'score': 6},  
            {'text': 'Milk', 'score': 5}, 
          ],
      },
      {
        'questionText': 'Talking to yourself often?',
        'answers': [
            {'text': 'Yes', 'score': 1}, 
            {'text': 'No', 'score': 10},  
          ],
      },
      {
        'questionText': 'Bathroom is the best place to debug codes',
        'answers': [
            {'text': 'Agree', 'score': 1}, 
            {'text': 'Disagree', 'score': 10},  
          ],
      },
      {
        'questionText': 'Enjoy spending time coding?',
        'answers': [
            {'text': 'Yes', 'score': 1}, 
            {'text': 'No', 'score': 10},  
          ],
      },
    ];
  var _counter = 0;
  var totalScore = 0;
  var previous = 0;

  void resetGame(){
    setState(() {
      _counter = 0;
      totalScore = 0;
    });
  }

  void _answeredQuestion(int score){
    setState(() {
      _counter += 1;
    });
    totalScore += score;
    previous = score;
  }
  void _back(){
    setState((){
      _counter -= 1;
    });
    totalScore -= previous;
  }

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Progrunner',
      home: Scaffold(
      appBar: AppBar(
        title: Text("Progrunner"),
      ), 
      body: _counter < questions.length ? Quiz(
          questions: questions, 
          answeredQuestion: _answeredQuestion, 
          counter: _counter,
          back: _back,
        ) : Result(totalScore, resetGame),
    ));
  }
}