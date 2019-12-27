import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'gender_card.dart';

const cardBackgroundColour = Color(0xFF1D1E33);
const bottomCardColour = Color(0xFFEA1456);
const double bottomCardHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                      cardColor: cardBackgroundColour,
                      cardChild: GestureDetector(
                        onTap: () {
                          print('This is the male card.');
                        },
                        child: GenderCard(
                          genderIcon: FontAwesomeIcons.mars,
                          genderText: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardColor: cardBackgroundColour,
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
              child: ReusableCard(cardColor: cardBackgroundColour),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(cardColor: cardBackgroundColour),
                  ),
                  Expanded(
                    child: ReusableCard(cardColor: cardBackgroundColour),
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
