import 'package:flutter/material.dart';

void main() { 
 runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState(){
    return MyAppState();
  }
}

 class MyAppState extends State<MyApp> {

  int count = 0;

  void increment() {
    setState(() {
      count =count + 1;
    });
   
 }

 @override
 Widget build(BuildContext Context) {

  return MaterialApp(
    home: Scaffold(
      floatingActionButton: FloatingActionButton(

       onPressed: increment,
       child: Icon(Icons.plus_one),
       ), // FloatingActionButton
           
      appBar: new AppBar(
        title: new Text("Increment Counter"),
      ), //AppBar

      body: new Center(
        child: new Text(
          "count = " + count.toString(),
          style: new TextStyle(fontSize: 30.0),
          ),
        ),


      ),
    );
   }
 
  }
 
