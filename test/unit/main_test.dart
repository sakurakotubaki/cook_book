import 'package:cook_book/unit/main.dart';
import 'package:test/test.dart';

void main() {
  test('IsStringLong', () {
    bool result = IsStringLong.isStringLong("abcdef");
    // assertは、文字数が５文字を超えるとエラーを発生させる
    assert(result == false);
    // 期待する値が、５文字を超える場合はtrueを返す
    expect(result, false);
  }); 
}