void main() {
  final f = ["🍎", "🍌", "🍒"];
  final fn = ["apple", "banana", "cherry"];
  final items = (f, fn);
  print(items); // ([🍎, 🍌, 🍒], [apple, banana, cherry]
  // items as Map
  final itemsMap = Map.fromIterables(f, fn);
  print(itemsMap); // {🍎: apple, 🍌: banana, 🍒: cherry}
  for(var i in itemsMap.entries) {
    final ik = i.key;// 🍎
    final iv = i.value;// apple
    final ikv = (ik, iv);// (🍎, apple)
    print(ikv);// (🍎, apple)
  }
}