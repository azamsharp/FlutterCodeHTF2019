import 'package:flutter/material.dart';

import 'animalDetail.dart';

class AnimalList extends StatelessWidget {

  List<String> _animals = ["🦓","🦍","🐘","🦏","🐪","🐫","🦒","🐃","🐂","🐄","🐎","🐕","🐩","🐈","🐓","🦃","🕊","🐇","🐁", "🐀"];

  void _showDetail(BuildContext context, String animal) {

    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => AnimalDetail(animal: animal)));


  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: _animals.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Text(_animals[index], style: TextStyle(fontSize: 50)),
          title: Text("Animal $index"),
          onTap: () {
              _showDetail(context, _animals[index]);
          },
        );
      },
    );
  }

}