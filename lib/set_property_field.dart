import 'package:bmi_calculator/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          style: kTextStyle,
        ),
        Text(
          titleValue.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundedButton(
              icon: Icons.add,
              onTap: onTapAdd,
            ),
            SizedBox(width: 10.0),
            RoundedButton(
              icon: Icons.remove,
              onTap: onTapReduce,
            ),
            // RoundedButton(Icons.remove, weight)
          ],
        ),
      ],
    );
  }
}
