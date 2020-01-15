import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResultText,
      @required this.bmiNumber,
      @required this.interpretation});

  final String bmiResultText;
  final String bmiNumber;
  final String interpretation;
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
                            bmiResultText,
                            style: kBMIResultText,
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            bmiNumber,
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
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          interpretation,
                          style: kInterpretation,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonName: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
