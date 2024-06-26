double bmi(double height, double weight) {
  // BMI = 体重÷（身長m）^2
  return weight / (height * height) / 100;
}

void main() {
  print(bmi(187.0, 61.0));
  print(bmi(187.0, 61.0));
}