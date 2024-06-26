class User {
  User(this.name, this._age);
  // 年齢は秘密
  int _age;
  final String name;
  // 秘密のメソッド
  String _secret() {
    return '$name is $_age years old';
  }
  // 年齢をgetterで実装
  String get expose => _secret();
  // 本当の年齢を設定するためのsetter
  set actualAge(int age) => _age = age;
}

void main() {
  final user = User('Alice', 30);
  print(user.expose);// Alice is 30 years old

  // 本当の年齢を設定
  user.actualAge = 31;
  print(user.expose);// Alice is 31 years old
}