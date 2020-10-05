import 'package:flutter/material.dart';
import 'main.dart';

class newPage extends StatelessWidget {
  String val;
  newPage({this.val});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          ),
          title: Text('hello'),
          backgroundColor: Color(0xFFFF1744)),
      body: Center(
        child: Text(
          val,
        ),
      ),
    );
  }
}
