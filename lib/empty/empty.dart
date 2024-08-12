void main() {
  // emptyとは、空のこと
  // 空のリストを作成。nullを許容するリスト
  List<int>? numbers = [1, 2, 3, 4, 5];
  // Listが空かどうかを確認
  if(numbers.isNotEmpty) {
    print('Listは、$numbersです');
  } else if(numbers.isEmpty) {
    print('Listは、空です');
  } else if(numbers == null) {
    print('Listは、空です');
  }
}