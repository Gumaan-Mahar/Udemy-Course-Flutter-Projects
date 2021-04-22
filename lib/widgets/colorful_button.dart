import 'package:flutter/material.dart';

class CustomColorfulButton extends StatelessWidget {
  final Function onClick;
  final String text;
  final Color textColor;
  final Color color;
  final double borderRadius;
  final double width;
  final double height;
  final Color borderSideColor;
  final Widget leadingIcon;
  final Widget trailingIcon;

  CustomColorfulButton(
      {@required this.text,
      @required this.onClick,
      this.textColor,
      this.color = Colors.blue,
      this.borderRadius,
      this.width,
      this.height = 30,
      this.borderSideColor,
      this.leadingIcon,
      this.trailingIcon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onClick,
        child: Container(
          height: height,
          width: width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(borderRadius),
            color: color,
            // boxShadow: [BoxShadow()],
          ),
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
