import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> q;
  final int question;
  final Function answerquestion;

  Quiz({
    @required this.q,
    @required this.answerquestion,
    @required this.question,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          q[question]['questiontext'],
        ),
        ...(q[question]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerquestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
