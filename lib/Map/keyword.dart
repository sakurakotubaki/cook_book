void main(List<String> args) {
  var members = [
    {'name': 'Roko', 'age': 26, 'height': 170.0, 'weight': 50.0, 'label': '88'},
    {'name': 'Nick', 'age': 28, 'height': 180.0, 'weight': 70.0, 'label': '1111'},
    {'name': 'Aya', 'age': 18, 'height': 160.0, 'weight': 40.0, 'label': 'aaa'},
    {'name': 'John', 'age': 30, 'height': 160.0, 'weight': 60.0, 'label': 'jjj'},
    {'name': 'Rui', 'age': 30, 'height': 170.0, 'weight': 60, 'label': '333'},
  ];

  // key labelの中に、指定した値が一部でも含まれていれば、そのMapを取り出す
  List<Map<String, dynamic>> searchKeyword(String value) {
    // where()メソッドで条件に一致する要素を取得 Iterable型で返す
    // contains()メソッドで指定した値が含まれているかを判定 bool型で返す
    // toList()メソッドでList型に変換して返す
    return members.where((m) => m['label'].toString().contains(value)).toList();
  }

  var result = searchKeyword('aa');
  if (result.isNotEmpty) {
    for (var member in result) {
      print(member);
    }
  } else {
    print('Not Found');
  }

  // {name: Aya, age: 18, height: 160.0, weight: 40.0, label: aaa}

  result = searchKeyword('1');
  if (result.isNotEmpty) {
    for (var member in result) {
      print(member);
    }
  } else {
    print('Not Found');
  }

  // {name: Nick, age: 28, height: 180.0, weight: 70.0, label: 1111}
}