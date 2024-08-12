void main() {
  // iとは、indexのこと
  // indexは、Listの位置を指す
  List<int> numbers = [1, 2, 3, 4, 5];
  // for
  for(int index = 0; index <numbers.length; index++) {
    print('index: $index, value: ${numbers[index]}');
  }
  // forEach
  numbers.forEach((number) {
    print('value: $number');
  });
}