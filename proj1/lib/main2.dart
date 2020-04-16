import 'package:flutter/material.dart';

void main() { 
 runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to kilogram',
      home: Scaffold(
        appBar: AppBar(
          title: new Text('Welcome to kilogram'),
          backgroundColor: Colors.teal[700]
        ), // AppBar
        body: Center(
          child: Text("Hello Viewers",
            style: new TextStyle(color: Colors.teal),
            ), // Text
        ), // Center
     ) ); // Scaffold
    
  }
}
 
