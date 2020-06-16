import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function reset;
  Result(this.result, this.reset);

  String get resultp {
    var resultt = 'You did it';
    if (result <= 10) {
      resultt = 'You are great!';
    } else if (result <= 14) {
      resultt = 'good ';
    } else {
      resultt = "bai ji Karan aujla is best";
    }
    return resultt;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultp,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: reset,
            textColor: Colors.blue,
            child: Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
