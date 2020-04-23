import 'package:flutter/material.dart';
import 'signup.dart';

class LoginScreen extends StatefulWidget {
  @override
  _State createState() => _State();

}
 
class _State extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 final formKey=GlobalKey<FormState>();

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
           Colors.pink[600],
           Colors.pink[500],
           Colors.pink[300],
           Colors.pink[200],

           
],
),
         ),//LinearGradient

        
child: Center(
child: new ListView (

  children: <Widget>[
    
    Image.asset("assets/my_logo.jpeg",
      height: 350,
      ),//Image.asset
    SizedBox(
                height: 20.0,
                ),  
      
    Form(
      key: formKey,
      child:  Column(
        children: <Widget>[
         TextFormField(
          validator:(value){
            if (value.isEmpty){
              return"Please enter the user name";
            }else if(value.length>8){
              return "Username should not exceed 8 characters!";
            }

            },
          decoration: InputDecoration(
               icon:Icon(Icons.account_circle,color: Colors.white),
               hintText: "Username",
               hintStyle: TextStyle(color: Colors.white70),
           ), 

            ),
               SizedBox(
                height: 20.0,
                ),  
           
         TextFormField(
          validator: (value){
            if (value.isEmpty){
              return"Please enter the user Password";
            }
          },            

            
          decoration: InputDecoration(
               icon:Icon(Icons.lock,color: Colors.white),
               hintText: "Password",
               hintStyle: TextStyle(color: Colors.white70),
           ),
          ),
        ],//<Widget>[]
        ),//column
      ),//Form
          
        
          SizedBox(
                height: 10.0,
                ), 
                FlatButton(
  onPressed: () {
    /*...*/
  },
  child: Text(
    "Forget Password ?",
  ),
),
           
           Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.1,0.4,0.7,0.9],
                colors: [
                Colors.pink[400],
                Colors.pink[500],
                Colors.pink[500],
                Colors.pink[400],
                ],
                ),//LinearGradient
              ),//BoxDecoration 
            child: ButtonTheme(
              buttonColor: Colors.white10,  
              height: 50.0,
              minWidth: double.infinity,
              child: RaisedButton(  
              onPressed: (){
                if(formKey.currentState.validate()){
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("Form Validated Successfully"),
                    ));
                }else{
                   Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("Error in Form"),
                    ));

                }
                },
              child: Text(
                "LOGIN",
                style: TextStyle(color: Colors.white),
                ), //Text  
                ),//RaisedButton
              ),//ButtonTheme

            ),//Container
            SizedBox(
                height: 10.0,
                ),  
            
            Text('Do you want to create a new account?',
              textAlign: TextAlign.center,),
                      FlatButton(
                        textColor: Colors.blue,
                        child: Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          //signup screen
                           
                        },

                      ),

                     

         ],//Widget



 ),// new Column
),//Center
  

                
          
)); //Container //Scaffold
  }
}

 
  