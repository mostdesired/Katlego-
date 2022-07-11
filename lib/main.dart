import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

final db = FirebaseFirestore.instance;
String? value;

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
              height: 17,
            ),
            //row3
            Row(
              //MainAxisAlignment mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  //padding: const EdgeInsets.fromLTRB(left, top, right, bottom)(10, 0, 10, 0),
                  child: ElevatedButton(
                      child: const Text('SUBMIT'),
                      onPressed: () {
                        db.collection('users').add({
                          'name': value
                        });
                        db.collection('users').add({
                          'surname': value
                        });
                        db.collection('users').add({
                          'gender': value
                        });
                        db.collection('users').add({
                          'hometown': value
                        });
                        Navigator.pop(context);
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
