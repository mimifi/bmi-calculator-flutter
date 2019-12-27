import 'package:flutter/material.dart';

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
