import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Your Result',
              style: kTitleResultStyle,
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: ReusableCard(
                cardColor: Color(0xFF111328),
                cardChild: Column(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'NORMAL',
                            style: kBMIResultText,
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            '22.0',
                            style: kBMIResultNumber,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Normal BMI Range:',
                            style: kPropertyTextStyle,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            '18,5 - 25 kg/m2',
                            style: kInterpretation,
                          ),
                        ],
                      ),
                      flex: 4,
                    ),
                    Expanded(
                      child: Text(
                        'You have a normal body weight. Great Job!',
                        style: kInterpretation,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonName: 'RE-CALCULATOR',
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
