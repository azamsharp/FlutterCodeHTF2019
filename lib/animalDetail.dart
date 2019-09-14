import 'package:flutter/material.dart';

class AnimalDetail extends StatelessWidget {

  final String animal; 

  AnimalDetail({this.animal});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail")
      ),
      body: Align(child: Text(this.animal, style: TextStyle(fontSize: 100)))
    );
  }

}