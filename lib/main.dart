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
            // ListTile(
            //: Text('Full Name'),
            //subtitle: TextFormField(
            //decoration: const InputDecoration(
            // border: OutlineInputBorder(
            // borderRadius: BorderRadius.all(Radius.circular(8))),
            // hintText: 'Full Name',
            //),
            // ),
            //),
            //SizedBox(
            // height: 5,
            //),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: Text('Department'),
                    subtitle: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                        hintText: '  Department',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: ListTile(
                    title: Text('Year Of Study'),
                    subtitle: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                        hintText: '  Year Of Study',
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
