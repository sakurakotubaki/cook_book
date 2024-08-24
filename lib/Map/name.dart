// key labelを追加, value woman, Manを追加
void main(List<String> args) {
  var person = {'name': 'Roko', 'age': 26, 'height': 170.0, 'weight':50.0};
  person['label'] = 'woman';
  print(person);

  print('------------------------------------------------------------------------');
  
  var editPerson = {};
  editPerson['name'] = 'hoge';
  editPerson['age'] = 30;
  editPerson['height'] = 180.0;
  editPerson['weight'] = 60.0;
  editPerson['label'] = 'Man';
  print(editPerson);
}