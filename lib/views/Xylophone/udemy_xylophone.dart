import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:udemy_project/widgets/colorful_button.dart';

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Udemy Xylophone App"),
        centerTitle: true,
      ),
      body: XylophonePage(),
    );
  }
}

class XylophonePage extends StatelessWidget {
  playSound(int soundNum) {
    final player = AudioCache();
    player.play("sounds/note$soundNum.wav");
  }

  soundButton({Color color, int soundNumber, String text}) {
    return CustomColorfulButton(
      text: text,
      color: color,
      onClick: () {
        playSound(soundNumber);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        soundButton(color: Colors.red, soundNumber: 1, text: "Color Red"),
        soundButton(color: Colors.yellow, soundNumber: 2, text: "Color Yellow"),
        soundButton(color: Colors.green, soundNumber: 3, text: "Color Green"),
        soundButton(color: Colors.orange, soundNumber: 4, text: "Color Orange"),
        soundButton(color: Colors.indigo, soundNumber: 5, text: "Color Indigo"),
        soundButton(color: Colors.blue, soundNumber: 6, text: "Color Blue"),
        soundButton(color: Colors.purple, soundNumber: 7, text: "Color Purple"),
      ],
    );
  }
}
