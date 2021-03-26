import 'dart:math';
import 'package:flutter/material.dart';

class ResultData {

  ResultData({@required this.height, @required this.weight});
  final double height;
  final double weight;
  double _bmi;

  String calculation(){
    _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String statusResult(){
    if(_bmi>=25)
      return 'Overweight';
    else if(_bmi<25 && _bmi>=18.5)
      return 'Normal';
    else
      return 'UnderWeight';
  }

  String instructionResult(){
    if(_bmi>=25)
      return 'Your BMI is quite high, You should have to Exercise!';
    else if(_bmi<25 && _bmi>=18.5)
      return 'Your BMI is Normal, Keep it up and Eat healthy!';
    else
      return 'Your BMI is quite low, You should eat more!';
  }
}