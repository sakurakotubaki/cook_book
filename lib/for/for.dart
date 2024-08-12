void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print('++ pattern');
  print('-----------------------------------------------------');
  // ++ pattern
  for (int i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }
  print('-- pattern');
  print('-----------------------------------------------------');
  // -- pattern
  for (int i = numbers.length - 1; i >= 0; i--) {
    print(numbers[i]);
  }
}

// ++ pattern
// -----------------------------------------------------
// 1
// 2
// 3  
// 4
// 5
// -- pattern
// -----------------------------------------------------
// 5
// 4
// 3
// 2
// 1

// Exited.