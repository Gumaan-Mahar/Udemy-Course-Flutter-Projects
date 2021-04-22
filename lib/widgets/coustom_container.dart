import 'package:flutter/cupertino.dart';

class CustomContainer extends StatelessWidget {
  final Color colour;
  final Widget child;
  final Function onTapGesture;

  const CustomContainer(
      {@required this.colour, this.child, @required this.onTapGesture});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapGesture,
      child: Container(
        child: child,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
