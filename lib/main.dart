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
          child: TextField(
            decoration: InputDecoration(
              labelText: 'hello',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ]))),
    );
  }
}
