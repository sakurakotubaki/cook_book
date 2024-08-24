// Listの中にあるMapから、valueが、jpのMapを取り出す
void main(List<String> args) {
  var members = [
    {
      'name': 'Roko',
      'age': 26,
      'height': 170.0,
      'weight': 50.0,
      'country': 'jp'
    },
    {'name': 'Nick', 'age': 28, 'height': 180.0, 'weight': 70.0},
    {'name': 'Aya', 'age': 18, 'height': 160.0, 'weight': 40.0},
    {
      'name': 'John',
      'age': 30,
      'height': 160.0,
      'weight': 60.0,
      'country': 'us'
    },
    {
      'name': 'Rui',
      'age': 30,
      'height': 170.0,
      'weight': 60.0,
      'country': 'uk'
    },
  ];

  var keyCountry = [];

  // for文でmembersをloop
  for (var m in members) {
    print(m);
    print(
        '------------------------------------------------------------------------');
    // Mapの中にjpというvalueがあるかどうかを確認
    if (m.containsValue('jp')) {
      // keyCountryにcountryというkeyがあるMapを追加
      keyCountry.add(m);
    }
  }

  print(keyCountry);
  //   {name: John, age: 30, height: 160.0, weight: 60.0, country: us}
  // ------------------------------------------------------------------------
  // {name: Rui, age: 30, height: 170.0, weight: 60.0, country: uk}
  // ------------------------------------------------------------------------
  // [{name: Roko, age: 26, height: 170.0, weight: 50.0, country: jp}]
}
