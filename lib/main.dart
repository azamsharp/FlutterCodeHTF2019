import 'package:flutter/material.dart';
import 'package:hello_htf/animalList.dart';

void main() => runApp(App());

class CounterState extends State<Counter> {

  int _counter = 0; 

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Align(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("$_counter", style: TextStyle(fontSize: 50)),
          FlatButton(
            child: Text("Press me!"), 
            onPressed: _incrementCounter,
            color: Colors.green, 
            textColor: Colors.white,
          )
        ],
      ),
    );
  }

}

class Counter extends StatefulWidget {

  @override 
  CounterState createState() => CounterState(); 

}


class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "hello flutter", 
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter")
        ), 
        body: AnimalList()
      )
    );
  }

}
