import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';
import 'password.dart';
import 'viralvirus.dart';
import 'technovirus.dart';
import 'viralvirusintro.dart';

class FirstPage extends StatelessWidget {
  @override
  String getTitle() => 'FirstPage';

    @override


  @override
  Widget build(BuildContext context) {
    final title = 'Horizontal List';

    return MaterialApp(
      theme: new ThemeData.dark(),
      title: title,
       
      home: Scaffold(
        drawer: Drawer(
  // Add a ListView to the drawer. This ensures the user can scroll
  // through the options in the drawer if there isn't enough vertical
  // space to fit everything.
  child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: <Widget>[
      DrawerHeader(
        child: Text('Choose the page you need go'),
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ),
      ListTile(
        title: Text('ViralVirus'),
        onTap: () {
              Navigator.push(context,MaterialPageRoute(
                    builder: (context) => ViralVirus()));

        },
      ),
      ListTile(
        title: Text('Technovirus'),
        onTap: () {
          Navigator.push(context,MaterialPageRoute(
                    builder: (context) => TechnoVirus()));
        },
      ),
    ],
  ),
),
        appBar: 
        AppBar(title: Text('Select your Favourites'),
          ),
        body:

         Container(  

         
          height: 200.0,

          margin: EdgeInsets.symmetric(vertical: 20.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[

            Container(
              child: Card(
              child: ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: FlatButton(onPressed: () {        
                                Navigator.push(context,MaterialPageRoute(
                    builder: (context) => ViralVirusIntro()));
},
                child:  Image.asset("assets/my_logo.jpeg",))),
              ),
            height: 200.0,
            width: 250.0,

            ),
            Container(
              child: Card(
              child: ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: FlatButton(onPressed: () {
                Navigator.push(context,MaterialPageRoute(
                    builder: (context) => ViralVirusIntro()));
                },
                child:  Image.asset("assets/thumb_nail.jpeg",))),
              ),
            width: 250.0,
            ),
            Container(
              child: Card(
              child: ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: FlatButton(onPressed: () {
                Navigator.push(context,MaterialPageRoute(
                    builder: (context) => ViralVirusIntro()));

                },
                child:  Image.asset("assets/image_1.jpeg",))),
              ),
            width: 250.0,
            
            ),
            Container(
              child: Card(
              child: ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: FlatButton(onPressed: () {
                Navigator.push(context,MaterialPageRoute(
                    builder: (context) => ViralVirusIntro()));

                },
                child:  Image.asset("assets/image_2.jpeg",))),
              ),
            width: 250.0,
            ),
            Container(
              child: Card(
              child: ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: FlatButton(onPressed: () {
                Navigator.push(context,MaterialPageRoute(
                    builder: (context) => ViralVirusIntro()));

                },
                child:  Image.asset("assets/image_3.jpeg",))),
              ),
            width: 250.0,
            ),
            Container(
              child: Card(
              child: ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: FlatButton(onPressed: () {
                Navigator.push(context,MaterialPageRoute(
                    builder: (context) => ViralVirusIntro()));
},
                child:  Image.asset("assets/image_4.jpeg",))),
              ),
            width: 250.0,
            ),

            
            ],
            ),
          ), 
         


        ),
      );

}

}