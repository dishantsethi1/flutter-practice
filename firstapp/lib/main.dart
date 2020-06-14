import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var question = 0;
  void answer() {
    setState(() {
        question = question + 1;
    });
  
    print(question);
  }

  @override
  Widget build(BuildContext context) {
    var q = ['what is your name', 'what is your age'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first flutter app '),
        ),
        body: Column(
          children: [
            Text(
              q[question],
            ),
            RaisedButton(
              child: Text('1 '),
              onPressed: answer,
            ),
            RaisedButton(
              child: Text('1'),
              onPressed: answer,
            ),
            RaisedButton(
              child: Text('1'),
              onPressed: answer,
            ),
          ],
        ),
      ),
    );
  }
}
