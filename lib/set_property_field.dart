import 'package:bmi_calculator/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class SetPropertyField extends StatelessWidget {
  final String title;
  final int titleValue;
  final Function onTapAdd;
  final Function onTapReduce;

  SetPropertyField({
    @required this.title,
    @required this.titleValue,
    @required this.onTapAdd,
    @required this.onTapReduce,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: kPropertyTextStyle,
        ),
        Text(
          titleValue.toString(),
          style: kPropertyNumberStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundedButton(
              icon: FontAwesomeIcons.plus,
              onTap: onTapAdd,
            ),
            SizedBox(width: 10.0),
            RoundedButton(
              icon: FontAwesomeIcons.minus,
              onTap: onTapReduce,
            ),
            // RoundedButton(Icons.remove, weight)
          ],
        ),
      ],
    );
  }
}
