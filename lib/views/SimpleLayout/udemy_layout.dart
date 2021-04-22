import 'package:flutter/material.dart';

class LayoutChallenge extends StatelessWidget {
  final String title;
  const LayoutChallenge({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.amberAccent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.navigate_before),
        ),
      ),
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 100.0,
              color: Colors.red,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.yellow,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.green,
                ),
              ],
            ),
            Container(
              width: 100.0,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
