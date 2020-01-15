import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String buttonName;
  final Function onTap;

  BottomButton({@required this.buttonName, @required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              buttonName,
              style: kLargeButtonTextStyle,
            ),
          ),
        ),
        color: kBottomCardColour,
        margin: EdgeInsets.only(top: 10.0),
        height: kBottomCardHeight,
        width: double.infinity,
      ),
    );
  }
}
