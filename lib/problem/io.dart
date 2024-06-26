void main() {
  List<String> i = ["1", "2", "3"];
  final o = i.map((e) => e.split("")).toList();
  print(o);// [[1], [2], [3]]
}