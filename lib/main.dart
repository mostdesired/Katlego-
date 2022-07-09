import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
              child: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.all(15),
          alignment: Alignment.topLeft,
          child: TextField(
            decoration: InputDecoration(
              labelText: 'name',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          alignment: Alignment.topRight,
          child: TextField(
            decoration: InputDecoration(
              labelText: 'age',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ]))),
    );
  }
}
