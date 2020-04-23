import 'package:flutter/material.dart';
import 'signup.dart';

class LoginScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}
 
class _State extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context)     {
    
    
    return Scaffold(
      body: new Container(
      width: double.infinity, 
       
      decoration: BoxDecoration(


         gradient: LinearGradient(
         
           begin: Alignment.topLeft,
           end: Alignment.bottomRight,
           stops: [
           0.1,0.4,0.7,0.9
            ],


           colors:[
           Colors.purple[600],
           Colors.purple[500],
           Colors.purple[300],
           Colors.purple[200],

           
],
),
         ),//LinearGradient

        
child: Center(
child: new Column(

  children: <Widget>[
    
    Image.asset("assets/my_logo.jpeg",
      height: 350,
      ),//Image.asset
      
    
          
         TextFormField(
          decoration: InputDecoration(
               icon:Icon(Icons.account_circle,color: Colors.white),
               hintText: "Username",
               hintStyle: TextStyle(color: Colors.white70),
           ), 

            ),
               SizedBox(
                height: 30.0,
                ),  
           
         TextFormField(
          decoration: InputDecoration(
               icon:Icon(Icons.lock,color: Colors.white),
               hintText: "Password",
               hintStyle: TextStyle(color: Colors.white70),
           ),
          ),
          SizedBox(
                height: 50.0,
                ),  
           Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.1,0.4,0.7,0.9],
                colors: [
                Colors.purple[700],
                Colors.purple[500],
                Colors.purple[500],
                Colors.purple[600],
                ],
                ),//LinearGradient
              ),//BoxDecoration 
            child: ButtonTheme(
              buttonColor: Colors.white10,  
              height: 50.0,
              minWidth: double.infinity,
              child: RaisedButton(  
              onPressed: (){},
              child: Text(
                "LOGIN",
                style: TextStyle(color: Colors.white),
                ), //Text  
                ),//RaisedButton
              ),//ButtonTheme

            ),//Container
          
         ],//Widget


 ),//Column
),//Center
  

                
          
)); //Container //Scaffold
  }
}

 
  