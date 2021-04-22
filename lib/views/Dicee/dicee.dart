import 'dart:math';

import 'package:flutter/material.dart';

class DiceHome extends StatelessWidget {
  const DiceHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Dicee HomePage"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  Random random = Random();
  int leftImageNumber = 1;
  int rightImageNumber = 1;

  void changeImageOnClick() {
    leftImageNumber = random.nextInt(6) + 1;
    rightImageNumber = random.nextInt(6) + 1;
    if (leftImageNumber == rightImageNumber) {
      Future.delayed(Duration(milliseconds: 500), () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Game Over..."),
              content: Text("The numbers of dices has matched!"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    child: Text("Cancel")),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      leftImageNumber = 1;
                      rightImageNumber = 1;
                    });
                    Navigator.pop(context);
                  },
                  child: Text("Play Again"),
                ),
              ],
            );
          },
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(
                  () {
                    changeImageOnClick();
                  },
                );
              },
              child: Image.asset('assets/images/dice$leftImageNumber.png'),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(16.0)),
                overlayColor: MaterialStateProperty.all(Colors.transparent),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('assets/images/dice$rightImageNumber.png'),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  EdgeInsets.all(16.0),
                ),
                overlayColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: () {
                setState(
                  () {
                    changeImageOnClick();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
