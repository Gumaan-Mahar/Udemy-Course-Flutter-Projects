import 'package:flutter/material.dart';

import 'input_page.dart';

class BMICalculatorHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Body Mass Index Calculator"),
            centerTitle: true,
          ),
          body: InputPage(),
        ));
  }
}
