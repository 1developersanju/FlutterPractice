import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';
import 'password.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Horizontal List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: 
          AppBar(title: Text('Select your Favourites'),
            ),
          
        
        body: Container(            
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[

              Container(child: ConstrainedBox(
    constraints: BoxConstraints.expand(),
    child: FlatButton(onPressed: () {},
        child:  Image.asset("assets/my_logo.jpeg",))),
              height: 200.0,
                width: 250.0,

              ),
              Container
                (child: ConstrainedBox(
    constraints: BoxConstraints.expand(),
    child: FlatButton(onPressed: () {},
        child:  Image.asset("assets/thumb_nail.jpeg",))),
                width: 250.0,
                 ),
              Container(child: ConstrainedBox(
    constraints: BoxConstraints.expand(),
    child: FlatButton(onPressed: () {},
        child:  Image.asset("assets/image_1.jpeg",))),
                width: 250.0,
          
              ),
              Container(child: ConstrainedBox(
    constraints: BoxConstraints.expand(),
    child: FlatButton(onPressed: () {},
        child:  Image.asset("assets/image_2.jpeg",))),
                width: 250.0,
              ),
              Container(child: ConstrainedBox(
    constraints: BoxConstraints.expand(),
    child: FlatButton(onPressed: () {},
        child:  Image.asset("assets/image_3.jpeg",))),
                width: 250.0,
              ),
              Container(child: ConstrainedBox(
    constraints: BoxConstraints.expand(),
    child: FlatButton(onPressed: () {},
        child:  Image.asset("assets/image_4.jpeg",))),
                width: 250.0,
              ),
             
            ],
          ),
        ),
 
      ),
    );
  }
}