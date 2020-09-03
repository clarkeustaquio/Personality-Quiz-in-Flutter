import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  // final Function selectCounter;
  final Function selectHandler;
  final String answers;

  Answer(this.selectHandler, this.answers);

  @override  
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answers),
        onPressed: selectHandler,
      ),
    );
  }
}