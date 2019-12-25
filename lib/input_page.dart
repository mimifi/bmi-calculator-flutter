import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                      cardChild: GenderCard(
                        genderIcon: FontAwesomeIcons.mars,
                        genderText: 'MALE',
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}

class GenderCard extends StatelessWidget {
  final IconData genderIcon;
  final String genderText;

  GenderCard({this.genderIcon, this.genderText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 80.0,
          color: Color(0xFFFFFFFF),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          genderText,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8E8E96),
          ),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;

  ReusableCard({@required this.cardColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
