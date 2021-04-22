import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class ScrollApp extends StatefulWidget {
  const ScrollApp({Key key}) : super(key: key);

  @override
  _ScrollAppState createState() => _ScrollAppState();
}

class _ScrollAppState extends State<ScrollApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "ListView Builder",
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: ScrollAppPage());
  }
}

class ScrollAppPage extends StatelessWidget {
  ScrollAppPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 60.0,
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.blue,
          ),
          child: Text(
            WordPair.random().asPascalCase,
            style: TextStyle(fontSize: 25),
          ),
        );
      },
    );
  }
}
