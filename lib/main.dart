import 'package:flutter/material.dart';
import 'pageNew.dart';

void main() {
  runApp(MaterialApp(
    title: 'value to next page',
    home: LoginScreen(),
  ));
}

class LoginScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    String val;

    return Scaffold(
        appBar: AppBar(
            title: Text('A warm welcome'), backgroundColor: Color(0xFFE91E63)),
        body: new Container(
          width: double.infinity,

          child: Center(
            child: new ListView(
              children: <Widget>[
                Form(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        autofocus: false,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (text) {
                          val = text;
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ], //<Widget>[]
                  ), //column
                ), //Form

                SizedBox(
                  height: 10.0,
                ),

                Container(
                  //BoxDecoration
                  child: ButtonTheme(
                    buttonColor: Colors.white10,
                    height: 50.0,
                    minWidth: double.infinity,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => newPage(val: val),
                            ));
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white),
                      ), //Text
                    ), //RaisedButt
                  ), //ButtonTheme
                ), //Container
              ], //Widget
            ), // new Column
          ), //Center
        )); //Container //Scaffold
  }
}
