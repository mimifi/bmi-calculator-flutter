import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculateBrain {
  final int weight;
  final int height;
  double _bmi;

  CalculateBrain({
    @required this.weight,
    @required this.height,
  });

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'You should try to lose weight.';
    } else if (_bmi > 18.5) {
      return 'This is amazing! Try to be always fit :)';
    } else {
      return 'You should eat more.';
    }
  }
}
