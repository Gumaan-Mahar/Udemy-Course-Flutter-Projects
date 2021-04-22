import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:udemy_project/views/BMI_Calculator/main.dart';
import 'package:udemy_project/views/Destiny/destini.dart';
import 'package:udemy_project/views/Dicee/dicee.dart';
import 'package:udemy_project/views/ListViewBuilder/listview_builder.dart';
import 'package:udemy_project/views/SimpleLayout/udemy_layout.dart';
import 'package:udemy_project/views/Magic8Ball/udemy_magic8ball.dart';
import 'package:udemy_project/views/Micard/udemy_micard.dart';

import 'ProfileScreen/profile_screen.dart';
import 'Quizzler/quizzler.dart';
import 'Xylophone/udemy_xylophone.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({this.title});

  navigateToNextScreen({text, context, screen}) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => screen,
          ),
        );
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('This is the Drawer'),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Close Drawer'),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 55.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            navigateToNextScreen(
              text: "User Profile Screen",
              context: context,
              screen: ProfileScreen(
                  profileTitle: "User Profile Screen",
                  profileColor: Colors.blue),
            ),
            navigateToNextScreen(
              text: "Udemy Layout Page",
              context: context,
              screen: LayoutChallenge(
                title: title,
              ),
            ),
            navigateToNextScreen(
              text: "Udemy MiCard Page",
              context: context,
              screen: Micard(
                title: title,
              ),
            ),
            navigateToNextScreen(
              text: "Udemy Dicee App",
              context: context,
              screen: DiceHome(),
            ),
            navigateToNextScreen(
              text: "Udemy Magic 8 Ball",
              context: context,
              screen: MagicBall(),
            ),
            navigateToNextScreen(
              text: "Udemy Xylophone App",
              context: context,
              screen: Xylophone(),
            ),
            navigateToNextScreen(
              text: "ListView Builder",
              context: context,
              screen: ScrollApp(),
            ),
            navigateToNextScreen(
              text: "Udemy Quizzler App",
              context: context,
              screen: QuizzlerHomePage(),
            ),
            navigateToNextScreen(
              text: "Destini - Choose Your Own Adventure",
              context: context,
              screen: StoryHomePage(),
            ),
            navigateToNextScreen(
              text: "BMI Calculator",
              context: context,
              screen: BMICalculatorHomePage(),
            ),
          ],
        ),
      ),
    );
  }
}
