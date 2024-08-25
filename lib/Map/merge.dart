// Mapを結合する
void main(List<String> args) {
  var person1 = {'name': 'Roko', 'age': 26, 'height': 170.0, 'weight':50.0};
  var person2 = {'name': 'Nick', 'age': 28, 'height': 180.0, 'weight':70.0};
  
  var people = {...person1, ...person2};
  print(people);
  // {name: Nick, age: 28, height: 180.0, weight: 70.0}
}