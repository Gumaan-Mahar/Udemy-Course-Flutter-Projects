import 'dart:math';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
// import 'package:new_gradient_app_bar';


class ResultHomePage extends StatelessWidget {
  final int weight;
  final int age;
  final double height;

  const ResultHomePage(
      {@required this.weight, @required this.age, @required this.height});

  @override
  Widget build(BuildContext context) {
    final double bmiResult = ((weight / pow(height, 2)) * 10000);

    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SfLinearGauge(
            minimum: 0.0,
            maximum: 40.0,
            markerPointers: [
              LinearWidgetPointer(
                  value: bmiResult,
                  position: LinearElementPosition.outside,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 25.0),
                    child: Text(
                      bmiResult.toStringAsFixed(2),
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  )),
              LinearShapePointer(
                value: bmiResult,
              )
            ],
            barPointers: [
              LinearBarPointer(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ScaleLabelText(label: 'Underweight'),
                    ScaleLabelText(label: 'Normal'),
                    ScaleLabelText(label: 'Overweight'),
                  ],
                ),
                value: 40,
                thickness: 50,
                shaderCallback: (bounds) => LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.topRight,
                  colors: [Colors.orange, Colors.green, Colors.red],
                ).createShader(bounds),
              ),
            ],
            orientation: LinearGaugeOrientation.horizontal,
            majorTickStyle: LinearTickStyle(
              length: 25,
              color: Colors.white,
            ),
            axisLabelStyle: TextStyle(fontSize: 15.0, color: Colors.amber),
            axisTrackStyle: LinearAxisTrackStyle(
              edgeStyle: LinearEdgeStyle.bothCurve,
              thickness: 17.0,
            ),
          ),
        ],
      ),
    );
  }
}

class ScaleLabelText extends StatelessWidget {
  final String label;

  const ScaleLabelText({
    @required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: 17.0,
        color: Colors.white,
        decoration: TextDecoration.none,
      ),
    );
  }
}
