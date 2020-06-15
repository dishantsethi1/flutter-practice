import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selecth;
  final String answertext;
  Answer(this.selecth,this.answertext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.red,
        textColor: Colors.white,
        child: Text(answertext),
        onPressed:selecth,
      ),
    );
  }
}
