import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MagicBall extends StatelessWidget {
  const MagicBall({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          "Ask Me Anything",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade700,
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white),
      ),
      body: MagicBallPage(),
    );
  }
}

class MagicBallPage extends StatefulWidget {
  MagicBallPage({Key key}) : super(key: key);

  @override
  _MagicBallPageState createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int ballImageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
          child: Image.asset("assets/images/ball$ballImageNumber.png"),
          onPressed: () {
            setState(() {
              ballImageNumber = Random().nextInt(5) + 1;
            });
          },
        ),
      ),
    );
  }
}
