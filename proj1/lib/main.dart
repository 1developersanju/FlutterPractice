// import 'package:flutter/material.dart';

//     void main() {
//       runApp(MaterialApp(
//         title: 'Flutter',
//         home: FirstScreen(),
//       ));
//     }
//     class FirstScreen extends StatelessWidget {
//       @override
//       Widget build(BuildContext context) {
//         return Scaffold(
        
//           appBar: AppBar(title: Text('Welcome to my APP'),
//             backgroundColor: Color(0xFFFF1744)),
//           body: Center(
//             child: RaisedButton(
//               child: Text(
//                 'Click here to login',
//                 style: TextStyle(fontSize: 24),

//               ),
//               onPressed: () {
//                 _navigateToSecondScreen(context);
//               },
//             )
//           ),
//         );
//       }

//       void _navigateToSecondScreen(BuildContext context) {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => SecondScreen(),
//             ));
//       }
//     }
//     class SecondScreen extends StatelessWidget {
//       @override
//       Widget build(BuildContext context) {
           
//          return Scaffold (

//           appBar: AppBar(title: Text("My APP")),

//           body: Center(    
//             child: Text(
//               "Hello viewers,this is my new trial of making an app. "),






         
            
//       ),  
//     );  
//   }  
// }    
            
 

        



import 'package:flutter/material.dart';
 
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
 
class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}
 
class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Viral Prime',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    //forgot password screen
                  },
                  textColor: Colors.blue,
                  child: Text('Forgot Password'),
                ),
                Container(
                  height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Login'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )),
                Container(
                  child: Row(
                    children: <Widget>[
                      Text('Do you want to create a new account?'),
                      FlatButton(
                        textColor: Colors.blue,
                        child: Text(
                          'Sign in',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          //signup screen
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }
}
 


