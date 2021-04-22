import 'package:flutter/material.dart';
import 'package:udemy_project/views/Destiny/storyBrainer.dart';

class StoryHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destini'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover),
            ),
          ),
          StoryPage(),
        ],
      ),
    );
  }
}

StoryBrain stories = StoryBrain();

class StoryPage extends StatefulWidget {
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 12,
          child: Center(
            child: Text(
              stories.getStory(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 27.0,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                stories.nextStory(1);
              });
            },
            child: Text(
              stories.getChoice1(),
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Expanded(
          flex: 2,
          child: Visibility(
            visible: stories.buttonShouldBeVisible(),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  stories.nextStory(2);
                });
              },
              child: Text(
                stories.getChoice2(),
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
