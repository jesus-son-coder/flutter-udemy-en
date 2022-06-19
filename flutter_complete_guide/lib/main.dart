import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
          Text('Ma 1ère question !'),
          RaisedButton(child: Text('Réponse 1'), onPressed: null), 
          RaisedButton(child: Text('Réponse 2'), onPressed: null), 
          RaisedButton(child: Text('Réponse 3'), onPressed: null),           
        ],
      ),
    ));
  }
}
