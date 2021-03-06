import 'package:flutter/material.dart';
import 'package:udemy_project/views/BMI_Calculator/result_page.dart';
import 'package:udemy_project/widgets/bottom_card_content.dart';
import 'package:udemy_project/widgets/coustom_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:udemy_project/widgets/icon_container.dart';

const double bottomContainerHeight = 70.0;
const Color bottomContainerColour = Color(0xFFFF1555);
const Color activeContainerColour = Color(0xFF1D1E33);
const Color deactiveContainerColour = Color(0xFF111328);

double sliderDefaultValue = 150.0;
int defaultAge = 25;
int defaultWeight = 88;

enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleContainerColour = deactiveContainerColour;
  // Color femaleContainerColour = deactiveContainerColour;
  // //1. male 2.female
  // void toggleContainerColour(GenderType gender) {
  //   gender == GenderType.male
  //       ? maleContainerColour == deactiveContainerColour
  //           ? () {
  //               maleContainerColour = activeContainerColour;
  //               femaleContainerColour = deactiveContainerColour;
  //             }()
  //           : maleContainerColour = deactiveContainerColour
  //       : gender == GenderType.female
  //           ? femaleContainerColour == deactiveContainerColour
  //               ? () {
  //                   femaleContainerColour = activeContainerColour;
  //                   maleContainerColour = deactiveContainerColour;
  //                 }()
  //               : femaleContainerColour = deactiveContainerColour
  //           : () {}(); //femaleContainerColour = deactiveContainerColour;

  // if (gender == GenderType.male) {
  //   if (maleContainerColour == deactiveContainerColour) {
  //     maleContainerColour = activeContainerColour;
  //     femaleContainerColour = deactiveContainerColour;
  //   } else {
  //     maleContainerColour = deactiveContainerColour;
  //   }
  // }
  // if (gender == GenderType.female) {
  //   if (femaleContainerColour == deactiveContainerColour) {
  //     femaleContainerColour = activeContainerColour;
  //     maleContainerColour = deactiveContainerColour;
  //   } else {
  //     femaleContainerColour = deactiveContainerColour;
  //   }
  // }
  GenderType selectedGender;
  Color selectedColour;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: CustomContainer(
                  onTapGesture: () {
                    setState(
                      () {
                        selectedGender = GenderType.male;
                      },
                    );
                  },
                  colour: selectedGender == GenderType.male
                      ? activeContainerColour
                      : deactiveContainerColour,
                  child: IconContainer(
                    iconName: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: CustomContainer(
                  onTapGesture: () {
                    setState(
                      () {
                        selectedGender = GenderType.female;
                      },
                    );
                  },
                  colour: selectedGender == GenderType.female
                      ? activeContainerColour
                      : deactiveContainerColour,
                  child: IconContainer(
                    iconName: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: CustomContainer(
            onTapGesture: () {},
            colour: activeContainerColour,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: sliderDefaultValue.toStringAsFixed(2),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: ' cm',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 25.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Slider(
                      value: sliderDefaultValue,
                      min: 100,
                      max: 200,
                      onChanged: (changingValue) {
                        setState(() {
                          sliderDefaultValue = changingValue;
                        });
                      }),
                ]),
          ),
        ),
        Expanded(
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: CustomContainer(
                  onTapGesture: () {},
                  colour: activeContainerColour,
                  child: BottomCardContent(
                    cardLabel: 'WEIGHT',
                    cardValue: defaultWeight,
                    onPressedMinus: () {
                      setState(() {
                        defaultWeight--;
                      });
                    },
                    onPressedPlus: () {
                      setState(() {
                        defaultWeight++;
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: CustomContainer(
                    onTapGesture: () {},
                    colour: activeContainerColour,
                    child: BottomCardContent(
                      cardLabel: 'AGE',
                      cardValue: defaultAge,
                      onPressedMinus: () {
                        setState(() {
                          defaultAge--;
                        });
                      },
                      onPressedPlus: () {
                        setState(() {
                          defaultAge++;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultHomePage(
                          weight: defaultWeight,
                          age: defaultAge,
                          height: sliderDefaultValue,
                        )));
          },
          child: Container(
            width: double.infinity,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 15.0),
            decoration: BoxDecoration(
              color: bottomContainerColour,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text(
              'CALCULATE',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}
