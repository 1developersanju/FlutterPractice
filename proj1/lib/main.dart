import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';
    void main() {
      runApp(MaterialApp(
        title: 'Flutter',
        
        home: FirstScreen(),
      ));
    }
    class FirstScreen extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
        
          appBar: AppBar(title: Text('Petromax Prime'),
            backgroundColor: Color(0xFFFF1744)),
          body: Center(
            child: RaisedButton(
              child: Text(
                'Click here to login',
                style: TextStyle(fontSize: 24),

              ),
              onPressed: () {
                _navigateToLoginScreen(context);
              },
            )
          ),
        );
      }

      void _navigateToLoginScreen(BuildContext context) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ));
      }
    }
    



            
 

        




 


