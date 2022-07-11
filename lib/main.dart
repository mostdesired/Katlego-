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
        body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, color: Colors.blue, children: <Widget>[
          SizedBox(
              width: 700,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'username',
                  contentPadding: EdgeInsets.symmetric(horizontal: 20), // <-- SEE HERE
                ),
              )),
          SizedBox(
            width: 100,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'UserName',
                contentPadding: EdgeInsets.symmetric(horizontal: 20), // <-- SEE HERE
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
