import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _question = 0;
  void _answer() {
    setState(() {
      _question = _question + 1;
    });

    print(_question);
  }

  @override
  Widget build(BuildContext context) {
    var q = [
      {
        'questiontext': 'What is your Color',
        'answers': ['Black', 'red', 'green', 'white'],
      },
      {
        'questiontext': 'What is your age',
        'answers': ['18>', '<20', '>20', '>25'],
      },
      {
        'questiontext': 'Who is your favourite singer',
        'answers': ['karan ', 'aujla', 'geetadimachine', 'ghuraleaala'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first flutter app '),
        ),
        body: Column(
          children: [
            Question(
              q[_question]['questiontext'],
            ),
            ...(q[_question]['answers'] as List<String>).map((answer) {
              return Answer(_answer, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
