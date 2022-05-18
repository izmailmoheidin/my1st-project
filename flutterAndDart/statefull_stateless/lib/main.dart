import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const OwnData());
}

class OwnData extends StatelessWidget {
  const OwnData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(

        padding: const EdgeInsets.only(left: 20, top: 20),
        child: ListView(
          children: [
            Text("hem"),
            SizedBox(
              height: 10,
            ),
            Text("hem"),
            SizedBox(
              height: 10,
            ),
            Text("hem"),
            SizedBox(
              height: 10,
            ),
            Text("hem"),
            SizedBox(
              height: 10,
            ),
            Text("hem"),
            SizedBox(
              height: 10,
            ),
            Text("hem"),
          ],
        ),
      )),
    );
  }
}
