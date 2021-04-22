import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const TextStyle labelStyle =
    TextStyle(fontSize: 15.0, color: Color(0xFFA4A5B6));

class IconContainer extends StatelessWidget {
  final IconData iconName;
  final String label;

  const IconContainer({@required this.iconName, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconName,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(label, style: labelStyle),
      ],
    );
  }
}
