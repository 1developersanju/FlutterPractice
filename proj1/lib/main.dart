import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(primaryColor: Colors.purple,
        buttonColor: Colors.pink,
        textTheme: TextTheme(body1: TextStyle(color: Colors.yellow))),
      
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to my APP',
          style: TextStyle(fontStyle: FontStyle.italic),
            ),
      
        ),
        body: new Center(
          child: new RaisedButton(
            onPressed: () {},
            child: new Text("Hello Viewers"),


            ),  
        ),
      ),
    );
  }
}
