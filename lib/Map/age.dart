// Listの中にあるMapから、countryというkeyがあるMapを取り出す
void main(List<String> args) {
   
  var members = [
    {'name': 'Roko', 'age': 26, 'height': 170.0, 'weight':50.0},
    {'name': 'Nick', 'age': 31, 'height': 180.0, 'weight':70.0},
    {'name': 'Aya', 'age': 18, 'height': 160.0, 'weight':40.0},
    {'name': 'John', 'age': 20, 'height': 160.0, 'weight':60.0, 'country': '🇺🇸'},
    {'name': 'Rui', 'age': 50, 'height': 170.0, 'weight':60.0, 'country': '🇬🇧'},
  ];

  // value ageが、30を超えるMapを取り出す
  // データ型のエラーが出るので、as intで、castする
  var keyAge = members.where((m) => (m['age'] as int) > 30);

  // 結果を表示する
  for (var member in keyAge) {
    print(member);
  }

  print('----------------------------------------------------');

  // 20を超えて、&& weightが60を超えるMapを取り出す
  var keyAgeWeight = members.where((m) => (m['age'] as int) > 20 && (m['weight'] as double) > 60);

  // 結果を表示する
  for (var member in keyAgeWeight) {
    print(member);
  }
}

// {name: Nick, age: 31, height: 180.0, weight: 70.0}
// {name: Rui, age: 50, height: 170.0, weight: 60.0, country: 🇬🇧}
// ----------------------------------------------------
// {name: Nick, age: 31, height: 180.0, weight: 70.0}