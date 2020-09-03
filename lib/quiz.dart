import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget{
  final List<Map<String, Object>> questions;
  final int counter;
  final Function answeredQuestion;
  final Function back;

  Quiz({
      @required this.questions, 
      @required this.answeredQuestion, 
      @required this.counter,
      @required this.back
    });

  @override
  Widget build(BuildContext context){
    return Column(
        children: [
          Question(
            questions[counter]['questionText'],
          ),
          // spread operator (...)
          // spread the list then add it into the children lists
          ...(questions[counter]['answers'] as List<Map<String, Object>>).map((answer) {
            return Answer(() => answeredQuestion(answer['score']), answer['text']);
          }).toList(),

          if (counter != 0)
            RaisedButton(
              child: Text('Back'),
              onPressed: ((){
                return back();
              }),
            ),
          
        ],
      
      );
  }
}