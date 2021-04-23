import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomCardContent extends StatelessWidget {
  final String cardLabel;
  final int cardValue;
  final Function onPressedPlus;
  final Function onPressedMinus;

  const BottomCardContent(
      {@required this.cardLabel,
      @required this.cardValue,
      @required this.onPressedPlus,
      @required this.onPressedMinus});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          cardLabel,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          cardValue.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: onPressedPlus,
              child: Container(
                child: Icon(FontAwesomeIcons.plus),
                height: 40.0,
                width: 40.0,
                decoration:
                    BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
              ),
            ),
            GestureDetector(
              onTap: onPressedMinus,
              child: Container(
                child: Icon(FontAwesomeIcons.minus),
                decoration:
                    BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                height: 40.0,
                width: 40.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
