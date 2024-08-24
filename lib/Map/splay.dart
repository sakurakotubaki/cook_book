import 'dart:collection';

void main(List<String> args) {
  Map<String, int> woman = {
    'yui': 31,
    'minn': 23,
    'mumi': 35,
    'Roku': 26,
  };
  // SplayTreeMapを使って、ageが大きい順に並べる
  var ms = SplayTreeMap.from(woman,
  (a, b) => woman[b]!.compareTo(woman[a]!));

  print(ms);


  print('----------------------------------------------------');
  
  // SplayTreeMapを使って、ageが小さい順に並べる
  // 逆にするだけで、小さい順に並べることができる
  var ms2 = SplayTreeMap.from(woman,
  (a, b) => woman[a]!.compareTo(woman[b]!));
 
  print(ms2);
  //   {mumi: 35, yui: 31, Roku: 26, minn: 23}
  // ----------------------------------------------------
  // {minn: 23, Roku: 26, yui: 31, mumi: 35}
}