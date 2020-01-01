import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'gender_card.dart';

const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomCardColour = Color(0xFFEA1456);
const double bottomCardHeight = 80.0;

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender activeGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Column(
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
                          ? activeCardColour
                          : inactiveCardColour,
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
                          ? activeCardColour
                          : inactiveCardColour,
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
              child: ReusableCard(cardColor: activeCardColour),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(cardColor: activeCardColour),
                  ),
                  Expanded(
                    child: ReusableCard(cardColor: activeCardColour),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomCardColour,
              margin: EdgeInsets.only(top: 10.0),
              height: bottomCardHeight,
              width: double.infinity,
            ),
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),*/
    );
  }
}
