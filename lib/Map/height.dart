// heightが大きい順に並べる。同じなら、ageが大きい順に並べる
void main(List<String> args) {
   
  var members = [
    {'name': 'Aya', 'age': 18, 'height': 160.0, 'weight': 40.0},
    {'name': 'John', 'age': 20, 'height': 160.0, 'weight': 60.0, 'country': '🇺🇸'},
    {'name': 'Rui', 'age': 50, 'height': 170.0, 'weight': 60.0, 'country': '🇬🇧'},
  ];

  // sortメソッドを使って、heightが大きい順に並べる
  // 同じなら、ageが大きい順に並べる
  // compareToメソッドを使って、比較する
  // https://api.flutter.dev/flutter/dart-core/num/compareTo.html
  // これが他より小さい場合は負の数、等しい場合はゼロ、大きい場合は正の数を返す。
  members.sort((a, b) {
    int result = (b['height'] as double).compareTo(a['height'] as double);
    if (result != 0) return result;
    return (b['age'] as int).compareTo(a['age'] as int);
  });

  print(members);

  // [{name: Rui, age: 50, height: 170.0, weight: 60.0, country: 🇬🇧}, {name: John, age: 20, height: 160.0, weight: 60.0, country: 🇺🇸}, {name: Aya, age: 18, height: 160.0, weight: 40.0}]
}