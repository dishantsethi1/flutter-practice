import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
  final _q = const [
    {
      'questiontext': 'What is your Color',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'red', 'score': 5},
        {'text': 'green', 'score': 1},
        {'text': 'white', 'score': 4}
      ],
    },
    {
      'questiontext': 'What is your age',
      'answers': [
        {'text': '<18', 'score': 10},
        {'text': '>18', 'score': 8},
        {'text': '<20', 'score': 6},
        {'text': '>20', 'score': 4}
      ],
    },
    {
      'questiontext': 'Who is your favourite singer',
      'answers': [
        {'text': 'karan aujla', 'score': 10},
        {'text': 'babbu', 'score': 8},
        {'text': 'sidhu moosewala', 'score': 6},
        {'text': 'ammy virk', 'score': 4}
      ],
    },
  ];
  var _question = 0;
  var _total=0;

  void _reset(){
    setState(() {
        _question=0;
    _total=0;
    });
  
  }
  void _answer(int score) {
    _total+=score;
    setState(() {
      _question = _question + 1;
    });
    if (_question < _q.length) {
      print('We have more questions');
    } else {
      print('no more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first flutter app '),
        ),
        body: _question < _q.length
            ? Quiz(
                answerquestion: _answer,
                question: _question,
                q: _q,
              )
            : Result(_total,_reset),
      ),
    );
  }
}
