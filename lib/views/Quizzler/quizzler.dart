import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:udemy_project/models/message.dart';
import 'package:udemy_project/views/Quizzler/quizBrainer.dart';

QuizBrain quizBrain = QuizBrain();
List<Icon> scoreList = [];
int totalScore = 0;

class QuizzlerHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Udemy Quizzler App"),
        centerTitle: true,
      ),
      body: Quizzler(quizBrain.listOfQuestions),
    );
  }
}

class Quizzler extends StatefulWidget {
  final List questions;

  Quizzler(this.questions);

  @override
  _QuizzlerState createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  final PageController controller = PageController();

  bool userAnswer;

  checkAnswer(bool userAnswer, int index) {
    if (widget.questions[index].correctAnswer == userAnswer) {
      totalScore++;
    }
    widget.questions[index].correctAnswer == userAnswer
        ? scoreList.add(
            Icon(Icons.check, color: Colors.green),
          )
        : scoreList.add(Icon(Icons.close, color: Colors.red));
    setState(() {});
    controller.nextPage(
        duration: Duration(microseconds: 200), curve: Curves.easeIn);
    if (index == 19) {
      var alertStyle = AlertStyle(
        animationType: AnimationType.grow,
        isCloseButton: true,
        isOverlayTapDismiss: true,
        descStyle: TextStyle(fontWeight: FontWeight.bold),
        descTextAlign: TextAlign.start,
        animationDuration: Duration(milliseconds: 900),
        alertBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
          side: BorderSide(
            color: Colors.grey,
          ),
        ),
        titleStyle: TextStyle(
          color: Colors.red,
        ),
        alertAlignment: Alignment.center,
      );

      Alert(
        context: context,
        style: alertStyle,
        title: "GAME OVER",
        desc: "Your Scrore: $totalScore",
        buttons: [
          DialogButton(
            child: Text('Cancel'),
            onPressed: () {
              scoreList.clear();
              totalScore = 0;
              Navigator.pop(context);
              Navigator.pop(context);
            },
          ),
          DialogButton(
            child: Text('Play Again'),
            onPressed: () {
              scoreList.clear();
              totalScore = 0;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QuizzlerHomePage()));
            },
          )
        ],
      ).show();
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      physics: ScrollPhysics(
        parent: NeverScrollableScrollPhysics(),
      ),
      itemCount: widget.questions.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(),
            widget.questions[index] is ImageQuestion
                ? widget.questions[index].text == null
                    ? Image.asset(
                        'assets/images/${widget.questions[index].imageLocation}')
                    : Column(
                        children: [
                          Text(
                            widget.questions[index].text,
                            style:
                                TextStyle(color: Colors.white, fontSize: 22.0),
                          ),
                          Image.asset(
                              'assets/images/${widget.questions[index].imageLocation}')
                        ],
                      )
                : Text(
                    widget.questions[index].text,
                    style: TextStyle(color: Colors.white, fontSize: 22.0),
                  ),
            Spacer(),
            SizedBox(
              height: 50.0,
              width: 30.0,
              child: ElevatedButton(
                onPressed: () {
                  userAnswer = true;
                  checkAnswer(userAnswer, index);
                },
                child: Text(
                  "True",
                ),
                style: ElevatedButton.styleFrom(primary: Colors.green),
              ),
            ),
            SizedBox(height: 10.0),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  userAnswer = false;
                  checkAnswer(userAnswer, index);
                },
                child: Text("False"),
                style: ElevatedButton.styleFrom(primary: Colors.red),
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              children: scoreList,
            ),
          ],
        );
      },
    );
  }
}
