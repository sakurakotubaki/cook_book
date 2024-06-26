void main() {
  final numbers = <String>['two', 'three', 'four'];
// Sort from shortest to longest.
  numbers.sort();
  print(numbers); // [two, four, three]
  numbers.sort((a, b) => a.length.compareTo(b.length));
  print(numbers); // [two, four, three]
}
