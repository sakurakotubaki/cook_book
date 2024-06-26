import 'dart:math';

  // 8文字の招待コードを自動性する関数
  String invitationCode([int length = 8]) {
    const charset = '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZ';
    final random = Random.secure();
    final randomStr =  List.generate(length, (_) => charset[random.nextInt(charset.length)]).join();
    return randomStr;
  }

void main() {
  print(invitationCode());
}