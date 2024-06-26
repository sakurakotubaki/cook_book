import 'package:cook_book/DI/mock.dart';
import 'package:test/test.dart';

void main() {
  group('Salutation', () {
    test('greet sends the correct message', () {
      // MockMessageServiceをインスタンス化します。
      final messageService = MockMessageService();
      // Salutationクラスをインスタンス化します。
      // このとき、MockMessageServiceを注入します。
      final salutation = Salutation(messageService);
      // greetメソッドを呼び出します。
      // greetの中には、依存しているクラスのメソッドを呼び出しています。
      salutation.greet('Test');
      // 第１引数には、期待する値を指定します。
      // 第２引数には、実際の値を指定します。
      expect(messageService.lastMessage, 'Hello, Test');
    });
  });
}