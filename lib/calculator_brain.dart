import 'dart:math';

class calculatorBrain {
  final int height;
  final int weight;
  calculatorBrain({required this.height, required this.weight});
  double bmi = 0;
  String calculateBmi() {
    double heightInMeters = height / 100;
    bmi = weight / pow(heightInMeters, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return "overweight";
    } else if (bmi >= 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (bmi >= 25) {
      return "You have a higher than normal body weight. Try to exercise more. ";
    } else if (bmi >= 18.5) {
      return "You have a normal body weight. Good Job";
    } else {
      return "You have a lower than normal body weight. You can eat a bit more";
    }
  }
}
