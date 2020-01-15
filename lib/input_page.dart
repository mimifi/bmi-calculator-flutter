import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/results_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/set_property_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'gender_card.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender activeGender;
  int height = 160;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          activeGender = Gender.male;
                        });
                      },
                      cardColor: activeGender == Gender.male
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: GenderCard(
                        genderIcon: FontAwesomeIcons.mars,
                        genderText: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          activeGender = Gender.female;
                        });
                      },
                      cardColor: activeGender == Gender.female
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: GenderCard(
                        genderIcon: FontAwesomeIcons.venus,
                        genderText: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                cardColor: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HIGHT',
                      style: kPropertyTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kPropertyNumberStyle,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'cm',
                          style: kPropertyTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbColor: Color(0xFFEB1455),
                          overlayColor: Color(0xFF3D0C2E),
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Color(0xFF8E8E96),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 14.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 22.0)),
                      child: Slider(
                        min: 150.0,
                        max: 220.0,
                        value: height.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.toInt();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      cardColor: kActiveCardColour,
                      cardChild: SetPropertyField(
                        title: 'WEIGHT',
                        titleValue: weight,
                        onTapAdd: () {
                          setState(() {
                            weight++;
                          });
                        },
                        onTapReduce: () {
                          setState(() {
                            weight--;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardColor: kActiveCardColour,
                      cardChild: SetPropertyField(
                        title: 'AGE',
                        titleValue: age,
                        onTapAdd: () {
                          setState(() {
                            age++;
                          });
                        },
                        onTapReduce: () {
                          setState(() {
                            age--;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              buttonName: 'CALCULATOR',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultsPage(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
