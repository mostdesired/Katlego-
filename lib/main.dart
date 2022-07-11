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
        body: Column(
          children: [
            //row1
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: Text('Name'),
                    subtitle: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                        hintText: 'Enter your name',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: ListTile(
                    title: Text('Surname'),
                    subtitle: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                        hintText: 'Enter surname',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //row2
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: Text('Gender'),
                    subtitle: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                        hintText: 'Gender',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Expanded(
                  child: ListTile(
                    title: Text('Hometown'),
                    subtitle: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                        hintText: 'Where do you stay',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            //row3
            Row(
              children: [
                Container(
                  height: 10,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                      child: const Text('SUBMIT'),
                      onPressed: () {
                        //print(nameController.text);
                        //print(passwordController.text);
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
