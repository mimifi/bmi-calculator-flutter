import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final IconData icon;
  final Function onTap;

  RoundedButton({@required this.icon, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        shape: new CircleBorder(),
        constraints: BoxConstraints.tightFor(height: 50.0, width: 50.0),
        elevation: 10.0,
        fillColor: Color(0xFF4C4F5E),
        child: Icon(
          this.icon,
          size: 24.0,
          color: Colors.white,
        ),
        onPressed: onTap);
  }
}
