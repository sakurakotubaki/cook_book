// ジェネリクス型を引数で受けて、それを返す関数です
T generics<T>(T t) {
  return t;
}

void main() {
  print(generics<int>(1)); // 1
  print(generics<String>('Hello')); // Hello
}