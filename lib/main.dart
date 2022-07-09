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
          body: Row(
              //Row(
              children: <Widget>[
                Expanded(
                  child: Row(children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: TextField(
                        decoration: InputDecoration(hintText: 'Time'),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Text("(in mins)/"),
                    ),
                  ]),
                ),
              ]),
        ));
  }
}
