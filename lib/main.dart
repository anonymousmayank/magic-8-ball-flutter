import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            title: Center(
              child: Text('Ask Me Anything',
              style:TextStyle(
                fontWeight: FontWeight.bold,
                fontSize:30
              ),
              ),
            ),
            backgroundColor: Colors.indigo,
          ),
          body: App(),
        ),
      ),
    );
class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int ballNumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(

        child:FlatButton(
          onPressed: (){
                setState((){
                  ballNumber=Random().nextInt(5)+1;
                }
                );
        },
          child: Image.asset('images/ball$ballNumber.png'),),
      ),
    );
  }
}


