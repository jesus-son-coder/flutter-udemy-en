import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;  
    });
    
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color ?',
      'What\'s your favorite animal ?',
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Ma Première App'),
      ),
      body: Column(
        children: <Widget>[
          Text(questions[questionIndex]),
          RaisedButton(child: Text('Réponse 1'), onPressed: answerQuestion),
          RaisedButton(child: Text('Réponse 2'), onPressed: answerQuestion),
          RaisedButton(child: Text('Réponse 3'), onPressed: answerQuestion),
        ],
      ),
    ));
  }
}
