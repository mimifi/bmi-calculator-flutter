import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF090B22),
        scaffoldBackgroundColor: Color(0xFF090B22),
        accentColor: Colors.green,
      ),
      home: InputPage(),
    );
  }
}
