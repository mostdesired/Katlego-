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
        height: 80,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
        ),
      )),
    );
  }
}
