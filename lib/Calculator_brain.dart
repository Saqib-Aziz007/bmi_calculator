import 'dart:math';

class BMI_Brain {
  BMI_Brain(this.height, this.weight);

  final int height;
  final int weight;

  double _bmi;

  String getresultNumber() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getresultString() {
    if (_bmi >= 25) {
      return 'You have a higher than Normal body weight. Try to EXERCISE more.';
    } else if (_bmi >= 18.5) {
      return 'You have Normal body wight. GOOD JOB.';
    } else {
      return 'You have a lower than Normal body wight. you can EAT a bit more.';
    }
  }
}
