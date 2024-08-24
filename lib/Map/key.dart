// Listの中にあるMapから、countryというkeyがあるMapを取り出す
void main(List<String> args) {
   
  var members = [
    {'name': 'Roko', 'age': 26, 'height': 170.0, 'weight':50.0},
    {'name': 'Nick', 'age': 28, 'height': 180.0, 'weight':70.0},
    {'name': 'Aya', 'age': 18, 'height': 160.0, 'weight':40.0},
    {'name': 'John', 'age': 30, 'height': 160.0, 'weight':60.0, 'country': '🇺🇸'},
    {'name': 'Rui', 'age': 30, 'height': 170.0, 'weight':60.0, 'country': '🇬🇧'},
  ];

  var keyCountry = [];

  // for文でmembersをloop
  for(var m in members) {
    print(m);
    print('------------------------------------------------------------------------');
    // Mapの中にcountryというkeyがあるかどうかを確認
    if(m.containsKey('country')) {
      // keyCountryにcountryというkeyがあるMapを追加
      keyCountry.add(m);
    }
  }

  print(keyCountry);
  //   {name: Roko, age: 26, height: 170.0, weight: 50.0}
  // ------------------------------------------------------------------------
  // {name: Nick, age: 28, height: 180.0, weight: 70.0}
  // ------------------------------------------------------------------------
  // {name: Aya, age: 18, height: 160.0, weight: 40.0}
  // ------------------------------------------------------------------------
  // {name: John, age: 30, height: 160.0, weight: 60.0, country: 🇺🇸}
  // ------------------------------------------------------------------------
  // {name: Rui, age: 30, height: 170.0, weight: 60.0, country: 🇬🇧}
  // ------------------------------------------------------------------------
  // [{name: John, age: 30, height: 160.0, weight: 60.0, country: 🇺🇸}, {name: Rui, age: 30, height: 170.0, weight: 60.0, country: 🇬🇧}]
}