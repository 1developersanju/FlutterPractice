import 'package:flutter/material.dart';

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
        
          appBar: AppBar(title: Text('Welcome to my APP'),
            backgroundColor: Color(0xFFFF1744)),
          body: Center(
            child: RaisedButton(
              child: Text(
                'Click here to login',
                style: TextStyle(fontSize: 24),

              ),
              onPressed: () {
                _navigateToSecondScreen(context);
              },
            )
          ),
        );
      }

      void _navigateToSecondScreen(BuildContext context) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SecondScreen(),
            ));
      }
    }

    class SecondScreen extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(

          appBar: AppBar(title: Text('My APP')),
          body: Center(    
      ),  
    );  
  }  
}    
            
 

        






